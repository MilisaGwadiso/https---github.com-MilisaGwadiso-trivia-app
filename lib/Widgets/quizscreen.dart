import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trivia_app/Widgets/button_list.dart';
import 'package:trivia_app/Widgets/question_model.dart';
import 'package:trivia_app/Widgets/routes.dart';
import 'package:trivia_app/Widgets/screens_container.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int totalScore = 0;
  int currentQuestionIndex = 0;
  String? selectedAnswer;

  Question get currentQuestion => questions[currentQuestionIndex];

  void _handleAnswerSelected(String answer) {
    setState(() {
      selectedAnswer = answer;
    });

    Future.delayed(const Duration(seconds: 1), () {
      if (answer == currentQuestion.correctAnswer) {
        setState(() {
          totalScore ++;
        });
      }

      if (currentQuestionIndex < questions.length - 1) {
        setState(() {
          currentQuestionIndex++;
          selectedAnswer = null;
        });
      } else {
        Navigator.of(context)
            .pushNamed(Routes.finalPage, arguments: {"totalScore": totalScore});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff9F7FFF), Color(0xff8055FE)],
        ),
      ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Center(
                child: Text(
                  'Question ${currentQuestionIndex + 1}',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: LinearProgressIndicator(
                  color: const Color(0xffFF9051),
                  value: (currentQuestionIndex + 1) / questions.length,
                ),
              ),
              const SizedBox(height: 40),
              ScreensContainer(text: currentQuestion.questionText),
              const SizedBox(height: 45),
              ButtonList(
                answers: currentQuestion.answers,
                selectedAnswer: selectedAnswer,
                correctAnswer: currentQuestion.correctAnswer,
                onAnswerSelected: _handleAnswerSelected,
                colour: const Color(0xffFF9051),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
