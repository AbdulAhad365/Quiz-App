import 'package:flutter/material.dart';
import 'package:flutter_application_1/question_screen.dart';
import 'package:flutter_application_1/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  QuizState createState() => QuizState();
}

class QuizState extends State<Quiz> {
  var active_Screen = "start-state";
  //? Widget? screen_;

  //? @override
  //? void initState() {
  //?   super.initState();
  //?   screen_ = StartScreen(hi: switchScreen);
  //? }

  void switchScreen() {
    setState(() {
      //? screen_ = QuestionScreen();
      active_Screen = 'question-screen';
    });
  }

  void questionScreen() {
    setState(() {
      active_Screen = 'start-screen';
    });
  }

  @override
  Widget build(context) {
    Widget activeScreen = StartScreen(hi: switchScreen);
    if (active_Screen == 'question-screen') {
      activeScreen = QuestionScreen(startScreen: questionScreen);
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 89, 52, 189),
                const Color.fromARGB(255, 49, 25, 114)
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),
          ),
          //? child: screen_,
          // child: active_Screen == 'start-state'
          //      StartScreen(hi: switchScreen)
          //     : QuestionScreen(),
          child: activeScreen,
        ),
      ),
    );
  }
}
