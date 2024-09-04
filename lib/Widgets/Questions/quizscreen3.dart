import 'package:flutter/material.dart';
import 'package:trivia_app/Widgets/button_list.dart';
import 'package:trivia_app/Widgets/screens_container.dart';
import 'package:trivia_app/routes/routes.dart';

class Quizscreen3 extends StatefulWidget {
  const Quizscreen3({super.key});

  @override
  State<Quizscreen3> createState() => _QuizscreenState();
}

class _QuizscreenState extends State<Quizscreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF9F7FFF),
        body: Center(
            child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              'Question 6',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: LinearProgressIndicator(
              backgroundColor: Colors.orangeAccent,
              value: 0.6,
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
            answers: const ['512', '1GB', '5GB', 'Unlimited'],
            onPress: () {
              Navigator.of(context).pushNamed(Routes.finalScreen);
            },
          )
        ])));
  }
}
