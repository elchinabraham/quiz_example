import 'package:flutter/material.dart';
import 'package:quiz_example/questions_screen.dart';

import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    // it is ok to add new element to list which is defined final.
    // Final keyword does not allow only to assign
    selectedAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 125, 16, 197),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: screenWidget,
        ),
      ),
    );
    ;
  }
}
