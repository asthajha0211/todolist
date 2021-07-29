import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.purple[300],
        unselectedWidgetColor: Colors.black,
        accentColor: Colors.purple,
        textTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.black, fontSize: 35.0, fontFamily: 'ValeraRound',),
          headline2: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontFamily: 'Roboto',
          ),
        ));
  }

  static ThemeData get darkTheme {
    return ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.pink[900],
        accentColor: Colors.pinkAccent,
        unselectedWidgetColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.white, fontSize: 35.0, fontFamily: 'ValeraRound'),
          headline2: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontFamily: 'Roboto',
          ),
        ));
  }
}
