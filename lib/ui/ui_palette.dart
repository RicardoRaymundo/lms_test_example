import 'package:flutter/material.dart';

class UIPalette {
  UIPalette._(); // this basically makes it so you can instantiate this class


  static const MaterialColor color = const MaterialColor(
    0xFF000000,
    const <int, Color>{
      50: const Color(0xFFf6e4f1),
      100: const Color(0xFFe8bddd),
      200: const Color(0xFFd991c6),
      300: const Color(0xFFc964af),
      400: const Color(0xFFbe439d),
      500: const Color(0xFFb2228c),
      600: const Color(0xFFab1e84),
      700: const Color(0xFFa21979),
      800: const Color(0xFF99146f),
      900: const Color(0xFF8a0c5c),
    },
  );
}
