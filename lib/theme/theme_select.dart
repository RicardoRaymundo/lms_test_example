import 'package:flutter/material.dart';

import 'custom/theme_custom_dark.dart';
import 'custom/theme_custom_light.dart';

/// Opções de temas do app
enum ThemeAspect { LIGHT, DARK }

class ThemeSelect {
  /// Método que retorna o tema corresponde à opção recebida
  static ThemeData data(ThemeAspect aspect) {
    switch (aspect) {
      case ThemeAspect.LIGHT:
        return ThemeCustomLight.data;
      case ThemeAspect.DARK:
        return ThemeCustomDark.data;
      default:
        return ThemeCustomDark.data;
    }
  }
}
