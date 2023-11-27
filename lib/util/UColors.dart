import 'package:flutter/material.dart';

final Color cGreen = _getColorFromHex("#52796F");
final Color cWhite = _getColorFromHex("#FFFFFF");
final Color cBlack  = _getColorFromHex("#000000");
final Color cGrey = _getColorFromHex("#888888");
Color? cBlackTransparent;
Color? cBlackMoreTransparent;
Color? cWhiteTransparent;

Color _getColorFromHex(String hexColor) {
  hexColor = hexColor.replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF$hexColor";
  }
  return Color(int.parse("0x$hexColor"));
}