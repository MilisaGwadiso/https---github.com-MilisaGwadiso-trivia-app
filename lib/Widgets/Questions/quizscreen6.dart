import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trivia_app/Widgets/button_list.dart';
import 'package:trivia_app/Widgets/screens_container.dart';
import 'package:trivia_app/routes/routes.dart';

class Quizscreen6 extends StatefulWidget {
  const Quizscreen6({super.key});

  @override
  State<Quizscreen6> createState() => _Quizscreen6State();
}

class _Quizscreen6State extends State<Quizscreen6> {
 
 String? _selectedAnswer;
  final String _correctAnswer = '5';

  void _handleAnswerSelected(String answer) {
    setState(() {
      _selectedAnswer = answer;
    });
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushNamed(Routes.quizScreen7);
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF9F7FFF),
        body: Center(
            child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Question 6',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: LinearProgressIndicator(
              color: Color(0xffFF9051),
              value: 0.6,
            ),
          ),

          const SizedBox(
            height: 40,
          ),
          const ScreensContainer(
            text: 'How many languages are represented in the South African national anthem?',
          ),
          const SizedBox(
            height: 45,
          ), // kjbijbih
          ButtonList(
              answers: const ['3', '5', '11', '7'],
               selectedAnswer: _selectedAnswer,
              correctAnswer: _correctAnswer,
              onAnswerSelected: _handleAnswerSelected,
              colour: const Color(0xffFF9051)),
        ])));
  }
}