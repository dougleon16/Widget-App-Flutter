import 'package:flutter/material.dart';

const colorList = <Color>[
  Color(0xff11ffbd),
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.black,
  Colors.yellow,
  Colors.pink,
  Colors.brown,
  Colors.teal
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0,
            'selectedColor must be between 0 and ${colorList.length - 1}'),
        assert(selectedColor < colorList.length,
            'Color must be between 0 and ${colorList.length - 1}');

  ThemeData gettheme() => ThemeData(
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
