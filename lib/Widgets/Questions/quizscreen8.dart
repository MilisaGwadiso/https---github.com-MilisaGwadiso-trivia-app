import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trivia_app/Widgets/button_list.dart';
import 'package:trivia_app/Widgets/screens_container.dart';
import 'package:trivia_app/routes/routes.dart';

class Quizscreen8 extends StatefulWidget {
  const Quizscreen8({super.key});

  @override
  State<Quizscreen8> createState() => _Quizscreen8State();
}

class _Quizscreen8State extends State<Quizscreen8> {
 
 String? _selectedAnswer;
  final String _correctAnswer = 'Johannesburg';

  void _handleAnswerSelected(String answer) {
    setState(() {
      _selectedAnswer = answer;
    });
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushNamed(Routes.quizScreen9);
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
              'Question 8',
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
              value: 0.8,
            ),
          ),

          const SizedBox(
            height: 40,
          ),
          const ScreensContainer(
            text: 'Which city is home to the world’s largest man-made forest with over 10 million trees?',
          ),
          const SizedBox(
            height: 45,
          ), // kjbijbih
          ButtonList(
              answers: const ['Johannesburg', 'Cape Town', 'Gqeberha', 'Durban'],
              selectedAnswer: _selectedAnswer,
              correctAnswer: _correctAnswer,
              onAnswerSelected: _handleAnswerSelected,
              colour: const Color(0xffFF9051)),
        ])));
  }
}