import 'package:flutter/material.dart';
 class ButtonList extends StatelessWidget {
   const ButtonList({
    required this.answers,
    super.key});
final List<String> answers ;

  @override
  Widget build(BuildContext context) {
  return Column(
    children: answers.map((answer) =>   Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor:Colors.orangeAccent, minimumSize: const Size(325, 64),
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
         )),
        child: Text(answer),onPressed: () {}),
    ),).toList(),
  );
  }
}