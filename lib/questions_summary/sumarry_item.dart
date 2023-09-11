import 'package:adv_basics/questions_summary/questions_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnwer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionsIdentifier(
          IsCorrectAnswer: isCorrectAnwer,
          QuestionIndex: itemData['question_index'] as int,
        ),
        const SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Color.fromARGB(255, 57, 255, 205),
                  ),
                  children: [
                    TextSpan(
                      text: 'Your answer : ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: itemData['user_answer'] as String,
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 183, 219),
                  ),
                  children: [
                    TextSpan(
                      text: 'Correct answer : ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: itemData['correct_answer'] as String,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
