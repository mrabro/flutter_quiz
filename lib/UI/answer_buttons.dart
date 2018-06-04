import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  bool answer;
  // VoidCallback() _onTap;

  AnswerButton(this.answer);


  @override
  Widget build(BuildContext context){
    return new Expanded( //True Button
      child: new Material( 
        color: answer == true ? Colors.greenAccent : Colors.redAccent,
        child: new InkWell(
          onTap: () => print("You answered True!"),
          child: new Center(
            child: new Container(
              child: new Text(answer == true ? "True" : "False"),
            ),
          ),
        ),
      ) 
    );
  }
}