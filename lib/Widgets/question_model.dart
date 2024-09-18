class Question {
  final String questionText;
  final List<String> answers;
  final String correctAnswer;
  Question({
    required this.questionText,
    required this.answers,
    required this.correctAnswer,
  });

  factory Question.fromMap(dynamic json) {
    String unescapeHtml(String text) {
      return text
          .replaceAll('&amp;', '&')
          .replaceAll('&lt;', '<')
          .replaceAll('&gt;', '>')
          .replaceAll('&quot;', '"')
          .replaceAll('&#039;', "'");
    }

    final List<String> incorrectAnswers =
        (json['incorrect_answers'] as List<dynamic>)
            .map((answer) => unescapeHtml(answer.toString()))
            .toList();

    final String correctAnswer =
        unescapeHtml(json['correct_answer'].toString());

    final List<String> allAnswers = List<String>.from(incorrectAnswers)
      ..add(correctAnswer);

    allAnswers.shuffle();

    return Question(
      questionText: unescapeHtml(json['question']).toString(),
      answers: allAnswers,
      correctAnswer: correctAnswer,
    );
  }
}
