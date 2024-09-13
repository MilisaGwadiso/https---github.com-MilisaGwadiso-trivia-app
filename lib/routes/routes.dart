import 'package:flutter/material.dart';
import 'package:trivia_app/Widgets/Questions/finalscreen.dart';
import 'package:trivia_app/Widgets/Questions/quizscreen1.dart';
import 'package:trivia_app/Widgets/Questions/quizscreen2.dart';
import 'package:trivia_app/Widgets/Questions/quizscreen3.dart';
import 'package:trivia_app/home_screen.dart';


class Routes {
  static const String homePage = '/';
static const String quizScreen1 = '/quizScreen1';
static const String quizScreen2 = '/quizScreen2';
static const String quizScreen3 = '/quizScreen3';
static const String  finalScreen = '/finalScreen';


static Route<dynamic> routeGenerator(RouteSettings settings)
{
switch (settings.name)
{
case homePage :
 return MaterialPageRoute(builder:(context)=> const HomeScreen());

 case quizScreen1 :
 return MaterialPageRoute(builder:(context)=> const Quizscreen());
 
 case  quizScreen2 :
 
 return MaterialPageRoute(builder:(context)=> const QuizScreen2());
 case  quizScreen3 :
 
 return MaterialPageRoute(builder:(context)=> const Quizscreen3());

case  finalScreen:
 
 return MaterialPageRoute(builder:(context)=> const Finalscreen());


 default: throw const FormatException('Route not found!');

}

}

}