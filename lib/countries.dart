import 'package:flutter/material.dart';

import 'reusableButton.dart';

class Countries extends StatelessWidget {
  final int itemIndex;
  final List<String> countries;
  final Function changeCountryText;

  Countries({this.itemIndex, this.countries, this.changeCountryText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Text(
            countries[itemIndex],
            style: TextStyle(fontSize: 25.0,
            color: Colors.blue,),
            textAlign: TextAlign.center,
          ),
        ),
        ReusableButton(
          buttonText: 'Change Country',
          buttonFunction: changeCountryText,
        )
      ],
    );
  }
}
