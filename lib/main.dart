import 'package:flutter/material.dart';
import 'package:trivia_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: Routes.homePage,
      onGenerateRoute: Routes.routeGenerator,
      );
  }
}
