import 'package:flutter/material.dart';
import 'package:trivia_app/Widgets/container.dart';
import 'package:trivia_app/Widgets/question_model.dart';
import 'package:trivia_app/Widgets/routes.dart';
import 'package:trivia_app/api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> apiQuestions = [];
  Future<void> fetchQuestions() async {
    final response = await Api.fetchQuestions();
    setState(() {
      apiQuestions = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff9F7FFF), Color(0xff8055FE)],
        ),
      ),
      child: Column(children: [
        const SizedBox(height: 80),
        const Image(
          image: AssetImage('assets/images/Illustration.png'),
          height: 243,
          width: 480,
        ),
        Stack(clipBehavior: Clip.none, children: [
          const ContainerWidget(
            height: 350,
            width: 330,
            text: '',
          ),
          Positioned(
            bottom: -43,
            left: 130,
            child: CircleAvatar(
              backgroundColor: const Color(0xffFF9051),
              radius: 40,
              child: IconButton(
                color: Colors.white,
                icon: const Icon(Icons.play_arrow_outlined),
                onPressed: () async {
                  print('Pressed');
                  await fetchQuestions();
                  Navigator.of(context)
                      .pushNamed(Routes.quizPage, arguments: apiQuestions);
                },
                iconSize: 60,
              ),
            ),
          )
        ])
      ]),
    ));
  }
}
