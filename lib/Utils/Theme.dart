import 'package:flutter/material.dart';

bool enableDarkMode = false;
IconData icon = Icons.brightness_3;

darkTheme(context) {
  return ThemeData(
    primarySwatch: Colors.teal,
    primaryColor: Colors.teal,
    accentColor: Colors.teal,
    disabledColor: Colors.grey,
    cardColor: Color(0xff1C2939),
    canvasColor: Color(0xff293849),
    focusColor: Colors.teal,
    cursorColor: Colors.teal,
    brightness: Brightness.dark,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
      colorScheme: ColorScheme.dark(),
      buttonColor: Colors.teal,
      splashColor: Colors.grey[900]
    ),
    appBarTheme: Theme.of(context).appBarTheme.copyWith(
      color: Color(0xff1C2939),
      iconTheme: IconThemeData(color: Colors.teal[300]),
      actionsIconTheme: IconThemeData(color: Colors.teal[300],),
    ),
    iconTheme: IconThemeData(color: Colors.teal),
  );
}

lightTheme(context) {
  return ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Colors.blue,
    accentColor: Colors.blue,
    disabledColor: Colors.grey,
    cardColor: Colors.white,
    canvasColor: Colors.white,
    focusColor: Colors.blue,
    cursorColor: Colors.blue,
    brightness: Brightness.light,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
      colorScheme: ColorScheme.light(),
      buttonColor: Colors.blue,
      splashColor: Colors.white,
    ),
    appBarTheme: Theme.of(context).appBarTheme.copyWith(
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.blue[600]),
      actionsIconTheme: IconThemeData(color: Colors.blue[600],),
    ),
    iconTheme: IconThemeData(color: Colors.blue),
  );
}