import 'package:flutter/material.dart';
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
        backgroundColor: Colors.deepPurpleAccent,
        body: Center(
            child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Question 6',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          LinearProgressIndicator(backgroundColor: Colors.orangeAccent,
              value: 0.7,
            ),
            SizedBox(
              height: 60,
            ),
          ScreensContainer(
            text:
                'When Gmail first launched, how much storage did it provide for your email ?',
          ),
          SizedBox(
            height: 45,
          ), // kjbijbih
          ButtonList(
            answers: ['512', '1GB', '5GB', 'Unlimited'],
            onPress: () {
              Navigator.of(context).pushNamed(Routes.quizScreen3);
            } ,
          )
        ])));
  }
}
