import 'dart:convert';
import 'package:http/http.dart' as http;

import 'Widgets/question_model.dart';

class Api {
  static Future<List<Question>> fetchQuestions() async {
    const url = 'https://opentdb.com/api.php?amount=10&type=multiple';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;

    final apiQuestions = results.map((json) {
      return Question.fromMap(json);
    }).toList();
    return apiQuestions;
  }
}
