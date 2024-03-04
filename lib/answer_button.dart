// although it is a button that will have to be tapped,
// it doesn't have a state that would have to be managed
// inside the button so we use StatelessWidget

import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  //positional arguments
  //const AnswerButton(this.answerText, this.onTap, {super.key});

  //named arguments
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 1, 31, 82),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(answerText),
    );
  }
}
