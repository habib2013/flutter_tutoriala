import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyApState();
  }
}

class MyApState extends State<MyApp>{
  var questionIndex = 0;

  void answerQuestions(){
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

@override
  Widget build(BuildContext context) {
  var questions = ['what\'s your name 22','what\'s your favorite food',];

  // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App'),
        ),
        body: Column(
          children:[
            Text(questions[questionIndex]),
            RaisedButton(child: Text('Answer 1'),onPressed: answerQuestions,),
            RaisedButton(child: Text('Answer 2'),onPressed: null,),
            RaisedButton(child: Text('Answer 3'),onPressed: null,),
          ],
        ),

      )
    );
  }
}