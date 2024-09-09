import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trivia_app/Widgets/button_list.dart';
import 'package:trivia_app/Widgets/screens_container.dart';
import 'package:trivia_app/routes/routes.dart';

class Quizscreen7 extends StatefulWidget {
  const Quizscreen7({super.key});

  @override
  State<Quizscreen7> createState() => _Quizscreen7State();
}

class _Quizscreen7State extends State<Quizscreen7> {
  
  String? _selectedAnswer;
  final String _correctAnswer = '11 February 1990';

  void _handleAnswerSelected(String answer) {
    setState(() {
      _selectedAnswer = answer;
    });
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushNamed(Routes.quizScreen8);
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
              'Question 7',
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
              value: 0.7,
            ),
          ),

          const SizedBox(
            height: 40,
          ),
          const ScreensContainer(
            text: 'When was Nelson Mandela set free?',
          ),
          const SizedBox(
            height: 45,
          ), // kjbijbih
          ButtonList(
              answers: const [
                '11 February 1990',
                '16 June 1994',
                '8 August 1994',
                '5 December 1991'
              ],
              selectedAnswer: _selectedAnswer,
              correctAnswer: _correctAnswer,
              onAnswerSelected: _handleAnswerSelected,
              colour: const Color(0xffFF9051)),
        ])));
  }
}
