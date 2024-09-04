import 'package:flutter/material.dart';
import 'package:trivia_app/Widgets/button_list.dart';
import 'package:trivia_app/Widgets/screens_container.dart';
import 'package:trivia_app/routes/routes.dart';

class Quizscreen extends StatefulWidget {
  const Quizscreen({super.key});

  @override
  State<Quizscreen> createState() => _QuizscreenState();
}

class _QuizscreenState extends State<Quizscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'Question 6',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const LinearProgressIndicator(
              backgroundColor: Colors.orangeAccent,
              value: 0.6,
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
              onPress: () {
                Navigator.of(context).pushNamed(Routes.quizScreen2);
              },
            )
          ],
        ),
      ),
    );
  }
}
