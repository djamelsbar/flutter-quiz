import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function x;
  const Answer( this.answerText, this.x ) ;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:ElevatedButton(
                style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ), 
                child: Text(
                  answerText,
                  style: TextStyle(fontSize: 25,color:Colors.white),
                  ) ,
                onPressed: x,
              )
    );
  }
}