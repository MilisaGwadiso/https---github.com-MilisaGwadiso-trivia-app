import 'package:flutter/material.dart';
import 'package:trivia_app/Widgets/screens_container.dart';

class Quizscreen extends StatefulWidget {
  const Quizscreen({super.key});

  @override
  State<Quizscreen> createState() => _QuizscreenState();
}

class _QuizscreenState extends State<Quizscreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column( children: [
          ScreensContainer(text: 'When Gmail first launched, how much storage did it provide for your email ?',),
   ] )
   )
    );
  }
}

