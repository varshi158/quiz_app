// main widget that will manage entire quiz

import "package:flutter/material.dart";
import "package:quiz_app/start_screen.dart";
import "package:quiz_app/questions_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget ? activeScreen;

  var activeScreen = "start-screen";

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }

  // needs to be connected to the button on StartScreen
  // startscreen needs access to this function
  void switchScreen() {
    setState(() {
      //activeScreen = const QuestionsScreen();
      activeScreen = "questions-screen";
    });
  }

  @override
  Widget build(BuildContext context) {

    // setting content conditionally
    Widget screenWidget = StartScreen(switchScreen);
            
    if (activeScreen == "questions-screen") {
        screenWidget = const QuestionsScreen();
    }
    

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 5, 85, 151),
                Color.fromARGB(255, 4, 45, 117),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          //child: activeScreen,
          // child: activeScreen == "start-screen"
          //     ? StartScreen(switchScreen)
          //     : const QuestionsScreen(),
          child: screenWidget,
        ),
      ),
    );
  }
}
