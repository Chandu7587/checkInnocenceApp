import 'package:flutter/material.dart';
// import './question.dart';
// import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      //'answers': ['Rabbit', 'Snake', 'Elepahant', 'Lion'
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elepahant', 'score': 5},
        {'text': 'Lion', 'score': 6}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor',
      'answers': [
        {'text': 'Bala', 'score': 1},
        {'text': 'Chandra', 'score': 2},
        {'text': 'Pavan', 'score': 3},
        {'text': 'Naveen', 'score': 4}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score, bool reset) {
    if (reset) {
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
        print(score);
      });
      print(_totalScore);
    } else {
      setState(() {
        _questionIndex = _questionIndex + 1;
        _totalScore += score;
      });
      print(_questionIndex);
    }

    if (_questionIndex < _questions.length) {
      print('We have more question!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    //Map

    // Widget List<Map<String, >>

    return MaterialApp(
      //elevation: 3,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // child: Stack()
        appBar: AppBar(
          elevation: 10,
          title: Text('Innocent Test',
          style: TextStyle(
            color:Colors.blue,
          ),
          ),
          //shadowColor: Colors.blueGrey,
        //  bottomOpacity: 5.0,

          backgroundColor: Colors.white,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(resultScore: _totalScore, answerQuestion: _answerQuestion),
      ),
    );
  }
}
