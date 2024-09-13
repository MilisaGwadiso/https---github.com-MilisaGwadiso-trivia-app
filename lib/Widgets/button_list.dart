import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonList extends StatelessWidget {
  const ButtonList(
      {required this.answers,
      required this.onPress,
      required this.colour,
      super.key});
  final List<String> answers;
  final Function()? onPress;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: answers
          .map(
            (answer) => Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: colour,
                  minimumSize: const Size(330, 64),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: onPress,
                child: Text(
                  answer,
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
