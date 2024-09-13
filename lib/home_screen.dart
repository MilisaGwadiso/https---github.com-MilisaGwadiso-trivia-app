import 'package:flutter/material.dart';
import 'package:trivia_app/Widgets/container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [Color(0xff9F7FFF), Color(0xff8055FE)])),
      child: const Scaffold(
          backgroundColor: Color(0xFF9F7FFF),
          body: Column(children: [
            SizedBox(height: 80),
            Image(
              image: AssetImage('assets/images/Illustration.png'),
              height: 243,
              width: 480,
            ),
            ContainerWidget(height: 350, width: 330, text: ''),
          ])),
    );
  }
}
