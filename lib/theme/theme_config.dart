import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lms_test_example/theme/theme_select.dart';

class ThemeConfig extends StatefulWidget {
  final Widget child;
  final ThemeAspect initialTheme;

  const ThemeConfig({Key key, this.initialTheme, @required this.child}) : super(key: key);

  @override
  _ThemeConfigState createState() => new _ThemeConfigState();

  static ThemeData of(BuildContext context) {
    _ThemeConfig themeConfig = (context.inheritFromWidgetOfExactType(_ThemeConfig) as _ThemeConfig);
    return themeConfig.themeConfigState.themeData;
  }

  static _ThemeConfigState instanceOf(BuildContext context) {
    _ThemeConfig customTheme = (context.inheritFromWidgetOfExactType(_ThemeConfig) as _ThemeConfig);
    return customTheme.themeConfigState;
  }
}

class _ThemeConfigState extends State<ThemeConfig> {
  ThemeData _themeData;

  ThemeData get themeData => _themeData;

  @override
  void initState() {
    _themeData = ThemeSelect.data(widget.initialTheme);
    super.initState();
  }

  void changeTheme(ThemeAspect aspect) {
    setState(() {
      _themeData = ThemeSelect.data(aspect);
    });
  }

  ThemeData chooseTheme(ThemeAspect aspect) {
    return ThemeSelect.data(aspect);
  }

  @override
  Widget build(BuildContext context) {
    return new _ThemeConfig(themeConfigState: this, child: widget.child);
  }
}

/// Classe responsável por herdar a variável 'CustomThemeState data' para seus filhos
/// e reconstruí-los quando esta variável é modificada
class _ThemeConfig extends InheritedWidget {
  final _ThemeConfigState themeConfigState;

  _ThemeConfig({this.themeConfigState, Key key, @required Widget child}) : super(key: key, child: child);

  /// Método que determina se os dependentes devem ser atualizados quando esta classe
  /// é modificada, no caso sim.
  @override
  bool updateShouldNotify(_ThemeConfig oldWidget) {
    return true;
  }
}
