import "package:flutter/material.dart";

class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText); //constructor

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
