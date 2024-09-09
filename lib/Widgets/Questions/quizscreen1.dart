import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trivia_app/Widgets/button_list.dart';
import 'package:trivia_app/Widgets/screens_container.dart';
import 'package:trivia_app/routes/routes.dart';

class Quizscreen extends StatefulWidget {
  const Quizscreen({super.key});

  @override
  State<Quizscreen> createState() => _QuizscreenState();
}

class _QuizscreenState extends State<Quizscreen> {
  String? _selectedAnswer; 
  final String _correctAnswer = '1GB';

  void _handleAnswerSelected(String answer) {
    setState(() {
      _selectedAnswer = answer;
    });
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushNamed(Routes.quizScreen2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: const Color(0xFF9F7FFF),


      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Question 1',
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
                value: 0.1,
              ),
            ),

            const SizedBox(
              height: 40,
            ),
            const ScreensContainer(
              text:
                  'When Gmail first launched, how much storage did it provide for your email ?',
            ),
            const SizedBox(
              height: 45,
            ), // kjbijbih
            ButtonList(
              answers: const ['512MB', '1GB', '5GB', 'Unlimited'],
              selectedAnswer: _selectedAnswer,
              correctAnswer: _correctAnswer,
              onAnswerSelected: _handleAnswerSelected,
              colour: const Color(0xffFF9051),
            ),
          ],
        ),
      ),
    );
  }
}
