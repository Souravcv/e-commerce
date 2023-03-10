import 'package:flutter/widgets.dart';

hexStringToColors(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("0", '');
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  return Color(int.parse(hexColor, radix: 16));
}
