import 'package:flutter/material.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';
import 'package:intl/intl.dart' as intl;


AppBar appBarWidget({title, }){
  return AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: title, color: darkGreyFont, size: 16.0),
        //in action we need to show the time and date and for formating time and date in desired formate use int
        actions: [
          Center(child: normalText(text: intl.DateFormat('EEE, MMM d''yy').format(DateTime.now()), color: purpleColor)),
          SizedBox(width: 10,)
          
        ],
        
      );
}