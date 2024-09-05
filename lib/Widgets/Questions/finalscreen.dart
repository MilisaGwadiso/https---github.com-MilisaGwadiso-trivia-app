import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trivia_app/Widgets/button_list.dart';
import 'package:trivia_app/Widgets/orange_circle.dart';
import 'package:trivia_app/routes/routes.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
              Text(
                'Nice Work',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const OrangeCircle(
                radius: 170,
                child: OrangeCircle(
                    radius: 110,
                    child: Icon(
                      Icons.check_rounded,
                      color: Colors.white,
                      size: 80,
                      weight: 500,
                    )),
              ),
              const SizedBox(
                height: 80,
              ),
              RatingBar.builder(
                  itemCount: 3,
                  initialRating: 2,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                  itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Color(0xffFFE55A),
                      ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  }),
              const SizedBox(
                height: 150,
              ),
              Text(
                'You Earned 80 pts',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              ButtonList(
                answers: const ['Play Again'],
                onPress: () {
                  Navigator.of(context).pushNamed(Routes.homePage);
                },
                colour: const Color(0xffFF9051),
              )
            ],
          ),
        ));
   
  }

 
  }

