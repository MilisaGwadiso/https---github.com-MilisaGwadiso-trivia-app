import 'package:flutter/material.dart';
import 'package:trivia_app/Widgets/Questions/finalscreen.dart';
import 'package:trivia_app/Widgets/Questions/quizscreen1.dart';
import 'package:trivia_app/Widgets/Questions/quizscreen10.dart';
import 'package:trivia_app/Widgets/Questions/quizscreen2.dart';
import 'package:trivia_app/Widgets/Questions/quizscreen3.dart';
import 'package:trivia_app/Widgets/Questions/quizscreen4.dart';
import 'package:trivia_app/Widgets/Questions/quizscreen5.dart';
import 'package:trivia_app/Widgets/Questions/quizscreen6.dart';
import 'package:trivia_app/Widgets/Questions/quizscreen7.dart';
import 'package:trivia_app/Widgets/Questions/quizscreen8.dart';
import 'package:trivia_app/Widgets/Questions/quizscreen9.dart';
import 'package:trivia_app/home_screen.dart';


class Routes {
  static const String homePage = '/';
static const String quizScreen1 = '/quizScreen1';
static const String quizScreen2 = '/quizScreen2';
static const String quizScreen3 = '/quizScreen3';
static const String quizScreen4 = '/quizScreen4';
static const String quizScreen5 = '/quizScreen5';
static const String quizScreen6 = '/quizScreen6';
static const String quizScreen7 = '/quizScreen7';
static const String quizScreen8 = '/quizScreen8';
static const String quizScreen9 = '/quizScreen9';
static const String quizScreen10 = '/quizScreen10';
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

 case  quizScreen4 :
 
 return MaterialPageRoute(builder:(context)=> const Quizscreen4());

 case  quizScreen5 :
 
 return MaterialPageRoute(builder:(context)=> const Quizscreen5());

case  quizScreen6 :
 
 return MaterialPageRoute(builder:(context)=> const Quizscreen6());

case  quizScreen7:
 
 return MaterialPageRoute(builder:(context)=> const Quizscreen7());
 case  quizScreen8 :
 
 return MaterialPageRoute(builder:(context)=> const Quizscreen8());
 case  quizScreen9:
 
 return MaterialPageRoute(builder:(context)=> const Quizscreen9());
 case  quizScreen10 :
 
 return MaterialPageRoute(builder:(context)=> const Quizscreen10());

case  finalScreen:
 
 return MaterialPageRoute(builder:(context)=> const Finalscreen());


 default: throw const FormatException('Route not found!');

}

}

}