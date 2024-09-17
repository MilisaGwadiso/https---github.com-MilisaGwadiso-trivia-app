import 'package:flutter/material.dart';
import 'package:trivia_app/Widgets/final_screen.dart';
import 'package:trivia_app/Widgets/question_model.dart';
import 'package:trivia_app/Widgets/quizscreen.dart';
import 'package:trivia_app/home_screen.dart';

class Routes {
  static const String homePage = '/';
  static const String quizPage = '/quizPage';
  static const String finalPage = '/finalPage';

  static Route<dynamic> routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case quizPage: 
      final args = settings.arguments as List<Question>;
        return MaterialPageRoute(
          builder: (context) => QuizScreen(apiQuestions :args,),
        );
      case finalPage:
        final args = settings.arguments as Map<String, int>;
        return MaterialPageRoute(
          builder: (context) => Finalscreen(args["totalScore"]!),
        );

      default:
        throw const FormatException('Route not found!');
    }
  }
}
