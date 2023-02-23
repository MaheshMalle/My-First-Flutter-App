import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // background (button) color
            foregroundColor: Colors.white, // foreground (text) color
          ),
          onPressed: selectHandler,
          child: Text(answerText),
        ));
  }
}
