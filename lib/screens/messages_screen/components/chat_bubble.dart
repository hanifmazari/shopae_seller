import 'package:flutter/material.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

Widget chatBubble(){
  return Directionality(textDirection: TextDirection.ltr, child: Container(
    padding: const EdgeInsets.all(8),
    margin: const EdgeInsets.all(8),
    decoration: const BoxDecoration(
      color: purpleColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      ),
      
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        normalText(text: "Your message..."),
        const SizedBox(height: 10,),
        normalText(text: "10:45pm")
      ],
    ),
  ));
}