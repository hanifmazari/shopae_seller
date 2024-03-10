import 'package:flutter/material.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

Widget dashboardButton(context,{title, count, icon}){
  return Container(
            width: 150,
            height: 80,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: purpleColor,
              borderRadius: BorderRadius.circular(8),
              
            ),
            child: Row(
              children: [

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      boldText(text: title, size: 16.0 ),
                      boldText(text: count, size: 20.0 )
                    ],
                  ),
                ),
                Icon(icon, color: whiteColor,size: 40,)
                // Image.asset('assets/icons/wholesale.png', color: whiteColor, width: 40,)
              ],
            ),
          );
}