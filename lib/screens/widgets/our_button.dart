import 'package:flutter/material.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

Widget ourButtonWidget({onpress, title, color = purpleColor}) {
  return ElevatedButton(
    
    style: ElevatedButton.styleFrom(backgroundColor: color, padding: const EdgeInsets.all(12)),
    
    onPressed: onpress, 
    child: boldText(text: title));
}
