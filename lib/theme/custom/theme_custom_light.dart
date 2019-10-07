import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeCustomLight {
  static final ThemeData data = ThemeData(

    // Define as cores e brilho default do app.
    primaryColor: Colors.blue,
    accentColor: Colors.cyan[600],
    cardColor: Colors.purple,
    backgroundColor: Colors.amberAccent,
    scaffoldBackgroundColor: Colors.red,
    brightness: Brightness.light,

    // Define a font family default.
    fontFamily: 'Montserrat',

    // Define o TextTheme default. Use isso para especificar o estilo de texto
    // default para headlines, titles, corpos de texto, etc.
    textTheme: TextTheme(
      headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),

  );
}