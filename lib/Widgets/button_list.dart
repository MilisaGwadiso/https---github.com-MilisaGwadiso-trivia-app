import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonList extends StatelessWidget {
  const ButtonList(
      {required this.answers,
      required this.colour,
      required this.correctAnswer,
      required this.selectedAnswer,
      required this.onAnswerSelected,
      super.key});

  final List<String> answers;
  final Color colour;
  final String correctAnswer;
  final String? selectedAnswer;
  final Function(String) onAnswerSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: answers.map((answer) {
        bool isSelected = selectedAnswer == answer;
        bool isCorrect = answer == correctAnswer;

        return Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  isSelected ? (isCorrect ? const Color(0xff09CACA) : Colors.red) : (selectedAnswer != null ? const Color(0xffAA8DFF) :colour),
              minimumSize: const Size(330, 64),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () => onAnswerSelected(answer),
            child: Text(
              answer,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
        );
      }).toList(),
    );
  }
}
