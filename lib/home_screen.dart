 import 'package:flutter/material.dart';

 class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Column(
        children: [
          SizedBox(height:80),
          Image(image:AssetImage('assets/images/Illustration.png') ,height: 243, width:480,)],
      ),
 );
  }
}