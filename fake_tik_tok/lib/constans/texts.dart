import 'package:flutter/material.dart';

class Texts {
  static Text up = const Text(
    "Upload",
    style: TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );

  static Text search = const Text(
    "Search:",
    textAlign: TextAlign.start,
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w800,
    ),
  );
  static Text pay = const Text(
    "Paymet method ",
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
  static Text tt = const Text(
    "Tik Tok",
    textDirection: TextDirection.ltr,
    style: TextStyle(
      fontSize: 40,
      fontFamily: 'TikTok',
      fontWeight: FontWeight.bold,
    ),
  );
  static Text custom = const Text(
    "Custom",
    style: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  );

  static String entName = "Search";
}
