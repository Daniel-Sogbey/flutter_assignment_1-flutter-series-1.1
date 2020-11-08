import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String buttonText;
  final Function buttonFunction;

  ReusableButton({this.buttonText, this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.blue,
          width: 2.0,
          style: BorderStyle.solid,
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 60.0),
      child: GestureDetector(
        onTap: buttonFunction,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.blue,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
