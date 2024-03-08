import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/question/components/question_provider.dart';
import 'package:ixl/features/presentation/pages/question/components/questions_background.dart';
import 'package:provider/provider.dart';

class QuestionsBody extends StatelessWidget {
  const QuestionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ChangeNotifierProvider(
        create: (context) => QuestionProvider(),
        child: const QuestionsBodyPage(),
      ),
    );
  }
}

class QuestionsBodyPage extends StatefulWidget {
  const QuestionsBodyPage({super.key});

  @override
  State<QuestionsBodyPage> createState() => _QuestionsBodyPageState();
}

class _QuestionsBodyPageState extends State<QuestionsBodyPage> {
  TextEditingController _answerController = TextEditingController();
  bool _validate = false;
  String title = "Add and subtract whole numbers";
  @override
  void dispose() {
    _answerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionProvider>(
      builder: (context, questionProvider, _) {
        final currentQuestion = questionProvider.currentQuestion;
        return QuestionsBackground(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 70, bottom: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        questionProvider.storeValueHive(
                            '', questionProvider.sumOfPoints, title);
                        Navigator.pop(context);
                      }, // Image tapped
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
                          title,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          questionProvider.sumOfPoints.toString(),
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      width: double.infinity,
                      height: 20,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: LinearProgressIndicator(
                          value: questionProvider.progressBarValue / 100,
                          backgroundColor: Colors.grey,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xFF52B2FF)),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/icons/question_page_icon1.png'),
                        const SizedBox(width: 15),
                        Image.asset('assets/icons/question_page_icon1.png'),
                        const SizedBox(width: 15),
                        Image.asset('assets/icons/question_page_icon1.png'),
                        const SizedBox(width: 15),
                        Image.asset('assets/icons/question_page_icon2.png'),
                      ],
                    ),
                    const SizedBox(height: 50),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Question',
                          style: const TextStyle(
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
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 100,
                      child: TextField(
                        enabled: questionProvider.enableTextField,
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
                  ],
                ),
                const Spacer(),
                !questionProvider.enableTextField
                    ? SizedBox()
                    : Row(
                        children: [
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () {
                              if (_answerController.text.isEmpty) {
                                setState(() {});
                              } else {
                                questionProvider.checkUserAnswer(
                                    context, _answerController.text);
                                _answerController.clear();
                                setState(() {});
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.green, // background
                              foregroundColor: Colors.white, // foreground
                            ),
                            child: const Text(
                              "Submit",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.blue, // background
                              foregroundColor: Colors.white, // foreground
                            ),
                            child: const Text(
                              "Explanation",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Spacer(),
                        ],
                      )
              ],
            ),
          ),
        );
      },
    );
  }
}
