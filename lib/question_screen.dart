import 'package:flutter/material.dart';
import 'package:flutter_application_1/button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({required this.startScreen, super.key});
  final void Function() startScreen;
  @override
  QuestionScreenState createState() => QuestionScreenState();
}

class QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  void nextQuestion() {
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(context) {
    var curentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/quiz.png', height: 200),
            Text(
              textAlign: TextAlign.center,
              curentQuestion.question,
              style: GoogleFonts.aBeeZee(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ...curentQuestion.ShuffledList().map((item) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Button(
                    text: item,
                    ontap: nextQuestion,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: widget.startScreen,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
              child: Text(
                "Home screen",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
