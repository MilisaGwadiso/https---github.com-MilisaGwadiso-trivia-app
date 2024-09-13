import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trivia_app/Widgets/button_list.dart';
import 'package:trivia_app/Widgets/screens_container.dart';
import 'package:trivia_app/routes/routes.dart';

class QuizScreen2 extends StatefulWidget {
  const QuizScreen2({super.key});

  @override
  State<QuizScreen2> createState() => _QuizScreen2State();
}

class _QuizScreen2State extends State<QuizScreen2> {
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
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: LinearProgressIndicator(
              color: Color(0xffFF9051),
              value: 0.7,
            ),
          ),
          const SizedBox(
            height: 60,
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
            onPress: () {
              Navigator.of(context).pushNamed(Routes.quizScreen3);
            }, colour: const Color(0xffAA8DFF),
          )
        ])));
  }
}
