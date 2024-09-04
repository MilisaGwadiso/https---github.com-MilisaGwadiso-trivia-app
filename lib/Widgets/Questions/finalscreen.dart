import 'package:flutter/material.dart';

class Finalscreen extends StatefulWidget {
  const Finalscreen({super.key});

  @override
  State<Finalscreen> createState() => _FinalscreenState();
}

class _FinalscreenState extends State<Finalscreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
children: [
SizedBox(height: 130
,),
Text('Nice Work', style: TextStyle(color: Colors.white,fontSize: 40),),
SizedBox(height: 20,),
CircleAvatar(backgroundColor: Colors.deepOrangeAccent, radius: 60,
  child: Icon(Icons.check_circle_outline, color: Colors.white,size: 80,),
)




],

        ),
      ),
    );
  }
}