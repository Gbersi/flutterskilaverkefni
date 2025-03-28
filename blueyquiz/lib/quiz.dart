import 'package:flutter/material.dart';
import 'package:blueyquiz/start_screen.dart';
import 'package:blueyquiz/questions_screen.dart';
import 'package:blueyquiz/data/questions.dart';
import 'package:blueyquiz/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State <Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  List<String> selectedAnswers = [];
  var activeScreen ="start-screen";

  void switchScreen(){
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length){
      setState(() {
      activeScreen = "results-screen";
    });
    }
  }

  void restartQuiz (){
    setState(() {
      selectedAnswers= [];
      activeScreen = "questions-screen";
    });
  }
  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen=="questions-screen"){
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen== "results-screen"){
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(161, 13, 5, 80),
                Color.fromARGB(244, 46, 182, 255),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child:screenWidget,
        ),
      ),
    );
  }
  }
