import 'package:flutter/material.dart';

// Descreve como os widgets roláveis devem se comportar.
class AppBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}