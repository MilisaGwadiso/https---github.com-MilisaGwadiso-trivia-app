
class Question {
final String questionText;
final List<String> answers;
final String correctAnswer;
 Question({required this.questionText,
 required this.answers,
 required this.correctAnswer});

}
final List<Question> questions = [
    
      Question(
         questionText:  'When Gmail first launched, how much storage did it provide for your email?',
      answers: ['512MB', '1GB', '5GB', 'Unlimited'],
      correctAnswer: '1GB', ),
    
  Question(
      questionText: 'How many eyes does a spider have?',
      answers: ['8', '6', '2', '11'],
      correctAnswer: '8' ),
    Question (questionText: 'What is the name of the South African national bird?',
      answers: ['Dove', 'Ostrich', 'Blue Crane', 'Cape Vulture'],
      correctAnswer: 'Blue Crane' ),
     Question ( questionText:
          'Which of these is not an official capital city of South Africa?',
      answers: ['Cape Town', 'Bloemfontein', 'Johannesburg', 'Pretoria'],
      correctAnswer: 'Johannesburg'),
    Question(
      questionText: 'How long is the iconic Garden Route?',
      answers: ['500Km', '150km', '300km', '620km'],
      correctAnswer: '300km' ),
    Question(
      questionText:
          'How many languages are represented in the South African national anthem?',
      answers: ['3', '5', '11', '7'],
      correctAnswer: '5'),
      Question(
      questionText: 'When was Nelson Mandela set free?',
      answers: [
        '11 February 1990',
        '16 June 1994',
        '8 August 1994',
        '5 December 1991'
      ],
      correctAnswer: '11 February 1990'),
    Question(
      questionText:
          'Which city is home to the world’s largest man-made forest with over 10 million trees?',
      answers: ['Johannesburg', 'Cape Town', 'Gqeberha', 'Durban'],
      correctAnswer: 'Johannesburg' ),
    Question(
      questionText: 'What are traffic lights called in South Africa?',
      answers: ['Traffic Lights', 'Robots', 'Stop-light', 'Stop-sign'],
      correctAnswer: 'Robots'),
    Question(
      questionText: 'When did south african become a republic ',
      answers: [
        '16 December 1994',
        '31 May 1961',
        ' 18 July 1990',
        '1 May 2000'
      ],
      correctAnswer: '31 May 1961')
  ];
