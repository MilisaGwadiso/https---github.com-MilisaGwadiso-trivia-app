import 'package:flutter/material.dart';

class ScreensContainer extends StatelessWidget {
  const ScreensContainer({
    required this.text,
    super.key});
final String text;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 260, width: 330,
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color:Colors.white,),
      child: Text(text, 
      style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent,fontSize:32,),
       textAlign: TextAlign.center, 
      ),
    );
  }
}