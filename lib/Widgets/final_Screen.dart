// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trivia_app/Widgets/orange_circle.dart';
import 'package:trivia_app/Widgets/routes.dart';
import 'package:trivia_app/Widgets/star_rating.dart';

class Finalscreen extends StatefulWidget {
  const Finalscreen(this.finalScore, {super.key});

  final int finalScore;

  @override
  State<Finalscreen> createState() => _FinalscreenState();
}

class _FinalscreenState extends State<Finalscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9F7FFF),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff9F7FFF), Color(0xff8055FE)],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 180,
              ),
              Text(
                'Nice Work',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 40),
              ),
              const SizedBox(
                height: 40,
              ),
              OrangeCircle(
                radius: 170,
                child: OrangeCircle(
                  radius: 110,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.check_rounded,
                      color: Colors.white,
                      size: 65,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              StarRating(
                starScore: widget.finalScore,
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'You Earned ',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w400),
                  ),
                  TextSpan(
                    text: '${widget.finalScore} pts',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  )
                ]),
              ),
              const SizedBox(
                height: 170,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.homePage);
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(330, 64),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: const Color(0xffFF9051)),
                child: const Text(
                  'Play Again',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
