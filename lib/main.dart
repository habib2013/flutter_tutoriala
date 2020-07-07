import 'package:flutter/material.dart';
import './questions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyApState();
  }
}

class MyApState extends State<MyApp>{
  var _questionIndex = 0;

  void _answerQuestions(){
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

@override
  Widget build(BuildContext context) {
  var _questions = ['what\'s your name 22','what\'s your favorite food',];

  // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App'),
        ),
        body: Column(
          children:[
            Questions(_questions[_questionIndex]),
            RaisedButton(child: Text('Answer 1'),onPressed: _answerQuestions,),
            RaisedButton(child: Text('Answer 2'),onPressed: null,),
            RaisedButton(child: Text('Answer 3'),onPressed: null,),
          ],
        ),

      )
    );
  }
}