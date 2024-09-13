import 'package:flutter/material.dart';

class OrangeCircle extends StatelessWidget {
  const OrangeCircle({
    required this.radius,
    required this.child,
    super.key,
  });
  final double radius;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
        color: const Color(0xffFF9051),
        boxShadow: [
          BoxShadow(
              offset: const Offset(
                0,
                16,
              ),
              color: const Color(0xff3610A6).withOpacity(0.4),
              blurRadius: 32)
        ],
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
