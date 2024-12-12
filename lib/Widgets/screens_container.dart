import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreensContainer extends StatelessWidget {
  const ScreensContainer({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 350, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(20),
      child: Text(
        text, textAlign:TextAlign.center,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
          color: const Color(0xff280A82),
          fontSize: 28,
        ),
        
      ),
    );
  }
}
