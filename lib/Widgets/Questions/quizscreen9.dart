import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trivia_app/Widgets/button_list.dart';
import 'package:trivia_app/Widgets/screens_container.dart';
import 'package:trivia_app/routes/routes.dart';

class Quizscreen9 extends StatefulWidget {
  const Quizscreen9({super.key});

  @override
  State<Quizscreen9> createState() => _Quizscreen9State();
}

class _Quizscreen9State extends State<Quizscreen9> {
  
  String? _selectedAnswer; 
  final String _correctAnswer = 'Robots';

  void _handleAnswerSelected(String answer) {
    setState(() {
      _selectedAnswer = answer;
    });
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushNamed(Routes.quizScreen10);
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
              'Question 9',
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
              value: 0.9,
            ),
          ),

          const SizedBox(
            height: 40,
          ),
          const ScreensContainer(
            text: 'What are traffic lights called in South Africa?',
          ),
          const SizedBox(
            height: 45,
          ), // kjbijbih
          ButtonList(
              answers: const ['Traffic Lights', 'Robots', 'Stop-light', 'Stop-sign'],
              selectedAnswer: _selectedAnswer,
              correctAnswer: _correctAnswer,
              onAnswerSelected: _handleAnswerSelected,
              colour: const Color(0xffFF9051)),
        ])));
  }
}