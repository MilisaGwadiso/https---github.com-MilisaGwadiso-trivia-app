import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trivia_app/Widgets/routes.dart';

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
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 16),
                blurRadius: 32,
                color: const Color(0xff3610A6).withOpacity(0.4))
          ],
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: Stack(clipBehavior: Clip.none, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Press play to start QUIZMASTER',
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff280A82),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Text(
                  'Answear questions correctly to earn points',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffA7A7A7),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ), textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -43,
            left: 130,
            child: CircleAvatar(
              backgroundColor: const Color(0xffFF9051),
              radius: 40,
              child: IconButton(
                color: Colors.white,
                icon: const Icon(Icons.play_arrow_outlined),
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.quizPage);
                },
                iconSize: 60,
              ),
            ),
          )
        ]));
  }
}
