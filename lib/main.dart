import 'package:flutter/material.dart';
import 'screens/card_picker_screen.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Planning Poker',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new CardPickerScreen(title: 'Planning Poker'),
    );
  }
}
