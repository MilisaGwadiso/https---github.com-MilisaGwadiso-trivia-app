import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  const StarRating({ required this.starScore, super.key});
final int starScore ;
  @override
  Widget build(BuildContext context) {
  int stars;
  if (starScore >=8){
    stars = 3;
  } else if(starScore >=5){
    stars =2;
  } else if (starScore >=3){
    stars =1;
  } else {stars = 0;}
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        Icons.star_rounded,
        color: stars>=1 ? const Color(0xffFFE55A) : const Color(0xff7646FE),
        size: 50,
      ),
      const SizedBox(
        width: 4,
      ),
      Icon(
        Icons.star_rounded,
        color: stars>=2 ? const Color(0xffFFE55A): const Color(0xff7646FE),
        size: 80,
      ),
      const SizedBox(
        width: 4,
      ),
      Icon(
        Icons.star_rounded,
        color: stars ==3 ? const Color(0xffFFE55A): const Color(0xff7646FE),
        size: 50,
      )
    ]);
  }
}
