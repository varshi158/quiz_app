import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

const quizLogo = "assets/images/quiz-logo.png";

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

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
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(
              color: const Color.fromARGB(202, 124, 195, 253),
              fontSize: 24,  
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(202, 124, 195, 253),
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
