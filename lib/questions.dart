import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
 String QuestionText;
  Questions(this.QuestionText);

  @override
  Widget build(BuildContext context) {
    return
     Container(
       width: double.infinity,
       child: Text(QuestionText,
         style: TextStyle(fontSize: 28,color: Colors.green),
         textAlign: TextAlign.center,
       )
       ,
     );
  }
}
