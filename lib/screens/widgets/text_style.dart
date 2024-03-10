import 'package:flutter/material.dart';
import 'package:shopae_seller/const/styles.dart';

Widget normalText({text, color=Colors.white, size=14.0}) {
  return Text(text, style: TextStyle(color: color, fontSize: size),);
}

Widget boldText({text, color = Colors.white, size = 14.0}) {
  return Text(
    text,
    style: TextStyle(fontFamily: semibold, color: color, fontSize: size),
  );
}
