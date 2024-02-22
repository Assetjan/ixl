import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/question/components/question_provider.dart';
import 'package:ixl/features/presentation/pages/question/components/questions_background.dart';
import 'package:ixl/features/presentation/pages/question/models/question.dart';
import 'package:ixl/features/presentation/pages/subjects/components/lesson_provider.dart';
import 'package:provider/provider.dart';

class QuestionsBody extends StatelessWidget {
  const QuestionsBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => QuestionProvider(),
        child: QuestionsBodyPage(),
      ),
    );
  }
}

class QuestionsBodyPage extends StatelessWidget {
  const QuestionsBodyPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionProvider>(
      builder: (context, questionProvider, _) {
        final currentQuestion = questionsList[questionProvider.currentQuestionIndex];

        return QuestionsBackground(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 70, bottom: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {}, // Image tapped
                      child: Image.asset(
                        'assets/icons/back_button.png',
                        width: 25,
                        height: 50,
                      ),
                    ),
                    Spacer(),
                    const Text("Math A topic", style: TextStyle(color: Colors.white, fontSize: 20),),
                    Spacer()
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text("Add and subtract whole numbers", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text("83%", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/icons/question_page_icon1.png'),
                        SizedBox(width: 15),
                        Image.asset('assets/icons/question_page_icon1.png'),
                        SizedBox(width: 15),
                        Image.asset('assets/icons/question_page_icon1.png'),
                        SizedBox(width: 15),
                        Image.asset('assets/icons/question_page_icon2.png'),

                      ],
                    ),
                    const SizedBox(height: 100),
                    const Text("Question 1", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                    const SizedBox(height: 10),
                    Text(
                      'Question ${currentQuestion.id + 1}: ${currentQuestion.text}',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 16),),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(234, 234, 234, 1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Write answer...",
                          hintStyle: const TextStyle(fontSize: 16),
                          contentPadding: const EdgeInsets.symmetric(vertical: 100, horizontal: 10),
                        ),
                        onChanged: (value) {
                          questionProvider.updateUserAnswer(value);
                        },
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        questionProvider.checkUserAnswer(context);
                      },
                      child: Text("Submit", style: TextStyle(fontSize: 20),),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: Colors.green, // background
                        onPrimary: Colors.white, // foreground
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Explanation", style: TextStyle(fontSize: 20),),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: Colors.blue, // background
                        onPrimary: Colors.white, // foreground
                      ),
                    ),
                    Spacer(),
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
