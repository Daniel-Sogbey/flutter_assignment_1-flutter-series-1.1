import 'package:flutter/material.dart';

import 'countries.dart';
import 'reusableButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _itemIndex = 0;

  List<String> _countries = [
    'Ghana',
    'Nigeria',
    'Togo',
    'Benin',
    'America',
    'Canada',
    'UK'
  ];

  void _changeCountryText() {
    setState(() {
      _itemIndex += 1;
    });
  }

  void _startOver() {
    setState(() {
      _itemIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Change Text App"),
          ),
          body: _itemIndex < _countries.length
              ? Countries(
                  itemIndex: _itemIndex,
                  changeCountryText: _changeCountryText,
                  countries: _countries,
                )
              : ReusableButton(
                  buttonText: 'Start Over',
                  buttonFunction: _startOver,
                )),
    );
  }
}
