import 'package:flutter/material.dart';
import 'package:trivia_app/Widgets/Questions/quizscreen.dart';
import 'package:trivia_app/home_screen.dart';

class Routes {
  static const String homePage = '/';
static const String quizScreen1 = '/quizScreen1';
static const String quizScreen2 = '/quizScreen2';

static Route<dynamic> routeGenerator(RouteSettings settings)
{
switch (settings.name)
{
case homePage :
 return MaterialPageRoute(builder:(context)=> const HomeScreen(),);

 case quizScreen1 :
 return MaterialPageRoute(builder:(context)=> const Quizscreen());

 default: throw const FormatException('Route not found!');

}

}

}