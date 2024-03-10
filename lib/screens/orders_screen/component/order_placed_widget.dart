import 'package:flutter/material.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/const/styles.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

Widget orderPlacedDetails({title1, title2, d1, d2}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            boldText(text: "$title1", color: purpleColor),
            boldText(text: "$d1", color: redColor)
          ],
        ),
        SizedBox(
          width: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              boldText(text: "$title2", color: purpleColor),
            boldText(text: "$d2", color: greenColor)
            ],
          ),
        )
      ],
    ),
  );
}
