import 'package:flutter/material.dart';
import 'package:trial_gui/answer.dart';

import './question.dart';
import './answer.dart';

// void main(){
//   runApp(CoolApp());
// }

void main() => runApp(CoolApp());

//my app object
class CoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CoolAppState();
  }
}

class _CoolAppState extends State<CoolApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context){
    var questions = [
      {'questionText': 'What\'s your aim?',
       'answers': ['Succeed', 'Fail', 'Consistency'],
      },
      {'questionText': 'What\'s your goal?',
        'answers': ['Freedom', 'Wealth', 'Consistency'],
      },
      {'questionText': 'What\'s your plan?',
        'answers': ['Execute', 'Endurance', 'Consistency'],
      },
      {'questionText': 'What\'s your mission?',
        'answers': ['Wacha tuone', 'kupanda bei', 'janta'],
      },
      {'questionText': 'What\'s your vision?',
        'answers': ['Peace', 'Wealth', 'Love'],
      },
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("CoolApps Only"),
      ),
      body: Column(
        children: [
          Question(questions[_questionIndex]['questionText'],),
          ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      ),
    ),
    );
  }
}