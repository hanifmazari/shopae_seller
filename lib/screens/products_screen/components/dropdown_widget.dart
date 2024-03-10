import 'package:flutter/material.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

Widget productDropdown() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    
    decoration: BoxDecoration(
      color: whiteColor,
      borderRadius: BorderRadius.circular(10)
    ),
    child: DropdownButtonHideUnderline(
      child: DropdownButton(
        value: null,
        isExpanded: true,
        items: [],
        onChanged: (value) {},
        hint: normalText(text: "choose category", color: greyFont, ),
      ),
    ),
  );
}
