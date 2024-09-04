import 'package:flutter/material.dart';
import 'package:trivia_app/Widgets/button_list.dart';
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
        child: Column(
          children: [ 
            SizedBox(height: 30,),
            Center( 
            child: Text('Question6', 
          style: TextStyle(
            color: Colors.white,
            fontSize:20,
            fontWeight: FontWeight.w500),
            ),),
          SizedBox(height: 60,),
          ScreensContainer(text: 'When Gmail first launched, how much storage did it provide for your email ?',),
          SizedBox(height: 45,), // kjbijbih
  ButtonList(answers: ['512','1GB','5GB','Unlimited'],) ] )
   )
    );
  }
}

