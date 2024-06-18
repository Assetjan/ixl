import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ixl/config/routes/app_routes.dart';
import 'package:ixl/core/colors.dart';
import 'package:ixl/core/common/custom_number_formatter.dart';
import 'package:ixl/core/common/keyboard/numeric_keyboard.dart';
import 'package:ixl/core/services/firestore.dart';
import 'package:ixl/core/services/get_points_firestore.dart';
import 'package:ixl/features/presentation/pages/question/components/explanation_widget.dart';
import 'package:ixl/features/presentation/pages/question/components/question_provider.dart';
import 'package:ixl/features/presentation/pages/question/components/questions_background.dart';
import 'package:ixl/features/presentation/pages/review_page/review_page.dart';
import 'package:provider/provider.dart';

import 'icon_based_on_score.dart';

class QuestionsBody extends StatelessWidget {
  const QuestionsBody({
    super.key,
    required this.subject,
    required this.theme,
    required this.testName,
    required this.currenScore,
    required this.finished,
  });
  final String subject;
  final String theme;
  final String testName;
  final int currenScore;
  final bool finished;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ChangeNotifierProvider(
        create: (context) => QuestionProvider(
          subject,
          theme,
          testName,
          currenScore,
        ),
        child: QuestionsBodyPage(
          subject: subject,
          theme: theme,
          testName: testName,
          finished: finished,
        ),
      ),
    );
  }
}

class QuestionsBodyPage extends StatefulWidget {
  const QuestionsBodyPage({
    super.key,
    required this.subject,
    required this.theme,
    required this.testName,
    required this.finished,
  });
  final String subject;
  final String theme;
  final String testName;
  final bool finished;
  @override
  State<QuestionsBodyPage> createState() => _QuestionsBodyPageState();
}

class _QuestionsBodyPageState extends State<QuestionsBodyPage>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  TextEditingController _answerController = TextEditingController();
  int? score;
  @override
  void dispose() {
    _answerController.dispose();
    _animationController.dispose();
    _scoreChangeAnimationController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;
  late AnimationController _scoreChangeAnimationController;
  late Animation<Offset> _scoreChangePositionAnimation;
  late Animation<double> _scoreChangeOpacityAnimation;

  bool? _isCorrect;
  int? _lastScoreChange;
  bool _showKeyboard = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    log('Obsever added');
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _colorAnimation = ColorTween(begin: Colors.white, end: Colors.white)
        .animate(_animationController);

    _animationController.addListener(() {
      setState(() {});
    });
    _colorAnimation.addListener(() {
      setState(() {});
    });
    _scoreChangeAnimationController = _animationController;

    _scoreChangePositionAnimation = Tween<Offset>(
      begin: const Offset(0.0, -0.5),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(
        parent: _scoreChangeAnimationController,
        curve: Curves.linear,
      ),
    );

    _scoreChangeOpacityAnimation = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(
      CurvedAnimation(
        parent: _scoreChangeAnimationController,
        curve: Curves.easeIn,
      ),
    );

    _scoreChangeAnimationController.forward();
  }

  void _handleUserAnswer(bool isCorrect, int scoreChange) {
    Color startColor = isCorrect ? Colors.green : Colors.red;
    Color endColor = Colors.white;
    setState(() {
      _isCorrect = isCorrect;
      _lastScoreChange = scoreChange;
    });

    _colorAnimation = ColorTween(begin: startColor, end: endColor)
        .animate(_animationController)
      ..addListener(() {
        setState(() {});
      });

    _animationController.forward(from: 0.0);
    _scoreChangeAnimationController.forward(from: 0.0);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.paused) {
      log('App is paused, attempting to save data...');
      await _saveData(context);
    }
  }

  Future<void> _saveData(BuildContext context) async {
    final provider = Provider.of<QuestionProvider>(context, listen: false);
    if (widget.subject != null &&
        widget.theme != null &&
        widget.testName != null) {
      try {
        final testData = await UserService()
            .getTestData(widget.subject, widget.theme, widget.testName);
        final prevScore = testData?.points ?? 0;
        if (prevScore < provider.sumOfPoints) {
          await AddUser(widget.subject, widget.theme, widget.testName,
                  provider.sumOfPoints)
              .addOrUpdateUserPoints();
          log('Data successfully saved.');
        } else {
          log('Current score is lower than previous score');
        }
        log('${prevScore}, $score, ${widget.subject}, ${widget.theme}, ${widget.testName}');
      } catch (e) {
        log('Failed to save data: $e');
      }
    } else {
      log('One or more required fields are null. Unable to save data.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionProvider>(
      builder: (context, questionProvider, _) {
        final currentQuestion = questionProvider.currentQuestion;
        final animationIntValue = questionProvider.lastScoreChange;
        score = questionProvider.sumOfPoints;
        if (widget.finished) {
          questionProvider.resetTest(
              widget.subject, widget.theme, widget.testName);
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColors.main_blue,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            await questionProvider.storeValue(
                                widget.subject, widget.theme, widget.testName);
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ReviewPage(
                                      title: widget.testName,
                                      correctAnswer: questionProvider
                                          .correctAnswersInRow
                                          .toString(),
                                      timer: questionProvider
                                          .formatMilliseconds());
                                },
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/icons/back_button.png',
                            width: 25,
                            height: 50,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "Math A topic",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const Spacer(),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.testName,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Text(
                                  'Score: ${questionProvider.sumOfPoints}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color:
                                        _colorAnimation?.value ?? Colors.white,
                                  ),
                                ),
                                if (questionProvider.sumOfPoints != 0)
                                  AnimatedBuilder(
                                    animation: _scoreChangeAnimationController,
                                    builder: (context, child) {
                                      return FadeTransition(
                                        opacity: _scoreChangeOpacityAnimation,
                                        child: SlideTransition(
                                          position:
                                              _scoreChangePositionAnimation,
                                          child: Text(
                                            animationIntValue == 0
                                                ? ''
                                                : '${_isCorrect ?? false ? '+' : '-'}${animationIntValue}',
                                            style: TextStyle(
                                              fontSize: 28,
                                              color: _isCorrect ?? false
                                                  ? Colors.green
                                                  : Colors.red,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                              ],
                            )
                          ],
                        ),
                        LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            final progressBarWidth = constraints.maxWidth - 28;
                            double calculateLeftPosition(double score) {
                              return progressBarWidth * (score / 100);
                            }

                            return Stack(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 14),
                                  width: progressBarWidth,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.centerLeft,
                                  child: FractionallySizedBox(
                                    widthFactor:
                                        questionProvider.progressBarValue / 100,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF52B2FF),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: calculateLeftPosition(70),
                                  bottom: 0,
                                  child: IconBasedOnScore(
                                      score: 70,
                                      iconAsset: questionProvider.sumOfPoints <
                                              70
                                          ? 'assets/icons/question_page_icon1.png'
                                          : 'assets/icons/download (1).png'),
                                ),
                                Positioned(
                                  left: calculateLeftPosition(80),
                                  bottom: 0,
                                  child: IconBasedOnScore(
                                      score: 70,
                                      iconAsset: questionProvider.sumOfPoints <
                                              80
                                          ? 'assets/icons/question_page_icon1.png'
                                          : 'assets/icons/download (2).png'),
                                ),
                                Positioned(
                                  left: calculateLeftPosition(90),
                                  bottom: 0,
                                  child: IconBasedOnScore(
                                      score: 70,
                                      iconAsset: questionProvider.sumOfPoints <
                                              90
                                          ? 'assets/icons/question_page_icon1.png'
                                          : 'assets/icons/download (3).png'),
                                ),
                                Positioned(
                                  left: calculateLeftPosition(100),
                                  bottom: 0,
                                  child: IconBasedOnScore(
                                      score: 70,
                                      iconAsset: questionProvider.sumOfPoints !=
                                              100
                                          ? 'assets/icons/question_page_icon2.png'
                                          : 'assets/icons/download.png'),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentQuestion.title,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    currentQuestion.text,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 80,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      readOnly: questionProvider.currentQuestion.keyboardType ==
                              'text'
                          ? false
                          : true,
                      onTap: () {
                        setState(() {
                          _showKeyboard = true;
                        });
                      },
                      enabled: questionProvider.enableTextField,
                      showCursor: _showKeyboard,
                      controller: _answerController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromRGBO(234, 234, 234, 1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Write answer...",
                        hintStyle: const TextStyle(fontSize: 16),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        errorText: _answerController.text.isEmpty &&
                                _answerController.text.length > 0
                            ? "Value Can't Be Empty"
                            : null,
                      ),
                      onChanged: (value) {
                        if (_answerController.text.isNotEmpty) {
                          setState(() {});
                        }
                      },
                    ),
                  ),
                  questionProvider.answered
                      ? ExplanationWidget(
                          correctAnswer: currentQuestion.correctAnswer,
                          explanation: currentQuestion.explanation)
                      : const SizedBox(),
                ],
              ),
            ),
            const Spacer(),
            questionProvider.sumOfPoints == 100
                ? const SizedBox()
                : questionProvider.answered
                    ? Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              questionProvider.moveToNextQuestion();
                              _showKeyboard = false;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                            ),
                            child: const Text(
                              "Got it!",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      )
                    : questionProvider.currentQuestion.keyboardType == 'text'
                        ? Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_answerController.text.isNotEmpty) {
                                    questionProvider.checkUserAnswer(
                                        context,
                                        _answerController.text.trim(),
                                        widget.subject,
                                        widget.theme,
                                        widget.testName,
                                        onChecked: (isCorrect, change) {
                                      _handleUserAnswer(isCorrect, change);
                                    });
                                    _answerController.clear();
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor: Colors.green,
                                  foregroundColor: Colors.white,
                                ),
                                child: const Text(
                                  "Submit",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          )
                        : _showKeyboard
                            ? NumericKeypad(
                                controller: _answerController,
                                onSubmit: () {
                                  if (_answerController.text.isNotEmpty) {
                                    questionProvider.checkUserAnswer(
                                        context,
                                        _answerController.text.trim(),
                                        widget.subject,
                                        widget.theme,
                                        widget.testName,
                                        onChecked: (isCorrect, change) {
                                      _handleUserAnswer(isCorrect, change);
                                    });
                                    _answerController.clear();
                                  }
                                },
                                hide: () {
                                  setState(() {
                                    _showKeyboard = false;
                                  });
                                },
                              )
                            : SizedBox(),
          ],
        );
      },
    );
  }
}
