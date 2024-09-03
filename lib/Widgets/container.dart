import 'package:flutter/material.dart';
class ContainerWidget extends StatelessWidget {
  const ContainerWidget({ required this.height,
  required this.width,
  required this.text,
    super.key,
  });
final double height;
final double width;  
final String text;

  @override
  Widget build(BuildContext context) {
    return  Container( height: height,
    width: width, 
    margin:const EdgeInsets.only(top:18),
     decoration:BoxDecoration(borderRadius: BorderRadius.circular(30), 
   color: Colors.white, ),
     child: Center(child: Text(text ,style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple,fontSize: 32,), textAlign: TextAlign.center,) ,),
     );
  }}