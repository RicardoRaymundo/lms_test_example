import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lms_test_example/ui/ui_palette.dart';

class ThemeCustomDark {
  static final ThemeData data = ThemeData(
    //APPLICATION
    applyElevationOverlayColor: true,
    fontFamily: 'Montserrat',
    //primarySwatch: UIPalette.color,
    typography: Typography(),

    //COLOR
    primaryColor: UIPalette.color[700],
    //primaryColorDark: UIPalette.color[700],
    //primaryColorLight: UIPalette.color[700],
    accentColor: UIPalette.color[400],
    //bottomAppBarColor: UIPalette.color[700],
    //buttonColor: UIPalette.color[700],
    //canvasColor: Color(0xffff00ff),
    cursorColor: UIPalette.color[700],
    //cardColor: Colors.orange,
    //disabledColor: UIPalette.color[700],
    //dividerColor: UIPalette.color[700],
    //errorColor: UIPalette.color[700],
    focusColor: UIPalette.color[700],
    highlightColor: UIPalette.color[700],
    hintColor: Colors.grey[600],
    //hoverColor: UIPalette.color[700],
    //indicatorColor: UIPalette.color[700],

    //secondaryHeaderColor: UIPalette.color[700],
    //selectedRowColor: UIPalette.color[300],
    //splashColor: UIPalette.color[700],

    //textSelectionColor: UIPalette.color[700],
    textSelectionHandleColor: UIPalette.color[700],
    //toggleableActiveColor: UIPalette.color[700],

    //unselectedWidgetColor: UIPalette.color[700],

    // COLOR_SCHEME
    /*colorScheme: ColorScheme(
      primary: UIPalette.color[500],
      primaryVariant: Color(0xff3700b3),
      secondary: Color(0xff03dac6),
      secondaryVariant: Color(0xff018786),
      surface: Colors.amber,
      background: Colors.green,
      error: Color(0xffb00020),
      onPrimary: Colors.white,
      onSecondary: Colors.amberAccent,
      onSurface: Colors.limeAccent,
      onBackground: Colors.purpleAccent,
      onError: Colors.blue,
      brightness: Brightness.dark,
    ),*/

    //BACKGROUND_COLOR
    backgroundColor: Color(0xff303030),
    dialogBackgroundColor: UIPalette.color[700],
    scaffoldBackgroundColor: Color(0xff121212),

    //BRIGHTNESS
    brightness: Brightness.dark,
    //primaryColorBrightness: Brightness.light,
    //accentColorBrightness: Brightness.dark,

    //THEME
    /*primaryIconTheme: IconThemeData(color: UIPalette.color[700], opacity: 1, size: 14),
    accentIconTheme: IconThemeData(color: UIPalette.color[700], opacity: 1, size: 14),
    appBarTheme: AppBarTheme(),
    bannerTheme: MaterialBannerThemeData(),
    bottomAppBarTheme: BottomAppBarTheme(),
    bottomSheetTheme: BottomSheetThemeData(),
    cardTheme: CardTheme(),
    chipTheme: ChipThemeData(
        backgroundColor: UIPalette.color[700],
        brightness: Brightness.dark,
        disabledColor: UIPalette.color[700],
        labelPadding: EdgeInsets.all(5.0),
        labelStyle: TextStyle(),
        secondaryLabelStyle: TextStyle(),
        secondarySelectedColor: UIPalette.color[700],
        selectedColor: UIPalette.color[700],
        deleteIconColor: UIPalette.color[700],
        elevation: 4.0,
        padding: EdgeInsets.all(8.0),
        pressElevation: 1.0,
        selectedShadowColor: UIPalette.color[700],
        shadowColor: UIPalette.color[700],
        shape: StadiumBorder()
    ),
    cupertinoOverrideTheme: CupertinoThemeData(),
    dialogTheme: DialogTheme(),
    dividerTheme: DividerThemeData(),
    iconTheme: IconThemeData(),
    inputDecorationTheme: InputDecorationTheme(),
    pageTransitionsTheme: PageTransitionsTheme(),
    popupMenuTheme: PopupMenuThemeData(),
    sliderTheme: SliderThemeData(),
    snackBarTheme: SnackBarThemeData(),
    tabBarTheme: TabBarTheme() ,
    tooltipTheme: TooltipThemeData(),*/

    //BUTTON_THEME
    buttonTheme: ButtonThemeData(buttonColor: UIPalette.color[500], shape: StadiumBorder(), padding: EdgeInsets.all(12.0)),
    floatingActionButtonTheme: FloatingActionButtonThemeData(),
    toggleButtonsTheme: ToggleButtonsThemeData(),

    //TEXT_THEME
    primaryTextTheme: TextTheme(
      display1: TextStyle(color: UIPalette.color[500], fontSize: 19, fontWeight: FontWeight.w500),
      display2: TextStyle(),
      display3: TextStyle(),
      display4: TextStyle(),
      body1: TextStyle(fontSize: 17, height: 1.3, color: Colors.grey[300]),
      body2: TextStyle(),
      button: TextStyle(),
      caption: TextStyle(),
      headline: TextStyle(),
      overline: TextStyle(),
      subhead: TextStyle(),
      subtitle: TextStyle(),
      title: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
    ),
    accentTextTheme: TextTheme(
      display1: TextStyle(color: Colors.grey[500], fontSize: 13),
      display2: TextStyle(color: Colors.grey[500], fontSize: 15),
      display3: TextStyle(color: Colors.grey[500], fontSize: 17),
      display4: TextStyle(color: Colors.grey[500], fontSize: 19),
      body1: TextStyle(),
      body2: TextStyle(),
      button: TextStyle(),
      caption: TextStyle(),
      headline: TextStyle(),
      overline: TextStyle(),
      subhead: TextStyle(),
      subtitle: TextStyle(),
      title: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w500,
      ),
    ),
    textTheme: TextTheme(
      headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      title: TextStyle(fontSize: 14.0, fontStyle: FontStyle.italic, color: Colors.red),
      body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      button: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.white),
    ),
  );
}
