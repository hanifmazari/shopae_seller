import 'package:flutter/material.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

Widget productImage({required lable, onpress}){
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      color: lightGreyColor, 
      borderRadius: BorderRadius.circular(10)
    ),
    child: Center(child: boldText(text: lable, color: greyFont, size: 16.0 )));
}