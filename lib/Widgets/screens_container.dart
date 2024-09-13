import 'package:flutter/material.dart';

class ScreensContainer extends StatelessWidget {
  const ScreensContainer({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 330, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(20),
      child: Text(
        text, textAlign:TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xff280A82),
          fontSize: 32,
        ),
        
      ),
    );
  }
}
