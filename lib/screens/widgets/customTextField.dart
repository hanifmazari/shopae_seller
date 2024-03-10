import 'package:flutter/material.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

Widget customTextField({label,hint, controller, isDesc=false}){
  return TextFormField(
    maxLines: isDesc?4:1,
    decoration: InputDecoration(
      isDense: true,
      label: normalText(text: label),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: whiteColor)
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: whiteColor)
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: whiteColor)
      ),
      hintText: hint,
      hintStyle: const TextStyle(color: lightGreyColor)
    ),
  );
}