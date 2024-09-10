import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  const StarRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        Icons.star_rounded,
        color: Color(0xffFFE55A),
        size: 50,
      ),
      SizedBox(
        width: 4,
      ),
      Icon(
        Icons.star_rounded,
        color: Color(0xffFFE55A),
        size: 80,
      ),
      SizedBox(
        width: 4,
      ),
      Icon(
        Icons.star_rounded,
        color: Color(0xff7646FE),
        size: 50,
      )
    ]);
  }
}
