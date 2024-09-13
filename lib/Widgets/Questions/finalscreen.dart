import 'package:flutter/material.dart';
import 'package:trivia_app/Widgets/button_list.dart';
import 'package:trivia_app/Widgets/orange_circle.dart';
import 'package:trivia_app/routes/routes.dart';

class Finalscreen extends StatefulWidget {
  const Finalscreen({super.key});

  @override
  State<Finalscreen> createState() => _FinalscreenState();
}

class _FinalscreenState extends State<Finalscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF9F7FFF),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 130,
              ),
              const Text(
                'Nice Work',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              const SizedBox(
                height: 20,
              ),
              const OrangeCircle(
                radius: 170,
                child: OrangeCircle(
                    radius: 110, child: Icon(Icons.check_rounded, color: Colors.white,size: 80, weight: 500,)),
              ),
              ButtonList(answers: const ['Play Again'], onPress: (){
                Navigator.of(context).pushNamed(Routes.homePage);
              }, colour: const Color(0xffFF9051),)
            ],
          ),
        ));
  }
}
