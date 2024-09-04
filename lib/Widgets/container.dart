import 'package:flutter/material.dart';
import 'package:trivia_app/routes/routes.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    required this.height,
    required this.width,
    required this.text,
    super.key,
  });
  final double height;
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Center(
            child: Text(
              'Press play to start QUIZMASTER',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Positioned(
            bottom: 90,
            left: 35,
            child: Center(
                child: Text('Answear questions correctly to earn points',
                    style: TextStyle(color: Colors.grey, fontSize: 14))),
          ),
          Positioned(
            bottom: -35,
            left: 130,
            child: CircleAvatar(
              backgroundColor: Colors.deepOrangeAccent,
              radius: 40,
              child: IconButton(
                color: Colors.white,
                icon: const Icon(Icons.play_arrow_outlined),
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.quizScreen1);
                },
                iconSize: 60,
              ),
            ),
          )
        ],
      ),
    );
  }
}
