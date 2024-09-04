import 'package:flutter/material.dart';
import 'package:trivia_app/Widgets/orange_circle.dart';

class Finalscreen extends StatefulWidget {
  const Finalscreen({super.key});

  @override
  State<Finalscreen> createState() => _FinalscreenState();
}

class _FinalscreenState extends State<Finalscreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFF9F7FFF),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 130,
              ),
              Text(
                'Nice Work',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              SizedBox(
                height: 20,
              ),
              OrangeCircle(
                radius: 170,
                child: OrangeCircle(
                    radius: 110, child: Icon(Icons.check_rounded, color: Colors.white,size: 80, weight: 500,)),
              ),
            ],
          ),
        ));
  }
}
