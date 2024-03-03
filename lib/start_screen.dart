import "package:flutter/material.dart";

const quizLogo = "assets/images/quiz-logo.png";

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void onStart() {}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            quizLogo,
            width: 200,
            color: const Color.fromARGB(136, 255, 255, 255),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              color: Color.fromARGB(174, 41, 130, 202),
              fontSize: 24,  
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: onStart,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(174, 41, 130, 202),
              textStyle: const TextStyle(fontSize: 18),
            ),
            icon: const Icon(Icons.arrow_right_alt_outlined),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
