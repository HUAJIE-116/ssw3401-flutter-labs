import 'package:flutter/material.dart';

// One shared style class keeps text consistent across the app.
class Styles {
  static const Color primaryColor = Color(0xFF687DAF);
  static const Color textColor = Color(0xFF3B3B3B);
  static const Color bgColor = Color(0xFFEEEDF2);
  static const TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static const TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static const TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static const TextStyle headLineStyle3 =
      TextStyle(fontSize: 17, color: Colors.grey, fontWeight: FontWeight.w500);
  static const TextStyle headLineStyle4 =
      TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500);
}
