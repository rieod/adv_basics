import 'package:flutter/material.dart';

class QuestionsIdentifier extends StatelessWidget {
  const QuestionsIdentifier({
    super.key,
    required this.IsCorrectAnswer,
    required this.QuestionIndex,
  });

  final bool IsCorrectAnswer;
  final int QuestionIndex;

  @override
  Widget build(BuildContext context) {
    final QuestionNumber = QuestionIndex + 1;

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: IsCorrectAnswer
            ? const Color.fromARGB(255, 154, 255, 157)
            : const Color.fromARGB(255, 255, 142, 134),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        QuestionNumber.toString(),
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
