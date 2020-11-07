import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String buttonText;
  final Function buttonFunction;

  ReusableButton({this.buttonText, this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      margin: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 60.0,
      ),
      child: RaisedButton(
        splashColor: Colors.white,
        onPressed: buttonFunction,
        color: Colors.blue,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
