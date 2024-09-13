import 'package:flutter/material.dart';
import 'package:trivia_app/routes/routes.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Center(
            child: Text(
              'Press play to start QUIZMASTER',
              style: GoogleFonts.poppins( fontSize: 28 ,fontWeight: FontWeight.w700,
                color: const Color(0xff280A82),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: 90,
            left: 33,
            child: Center(
                child: Text('Answear questions correctly to earn points',
                    style: GoogleFonts.poppins(color:  Colors.grey, fontSize: 13,fontWeight: FontWeight.w400,)),),
          ),
          Positioned(
            bottom: -35,
            left: 130,
            child: CircleAvatar(
              backgroundColor: const Color(0xffFF9051),
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
