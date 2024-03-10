import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/screens/orders_screen/orders_detail_screen.dart';
import 'package:shopae_seller/screens/widgets/appbar_widget.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';
import 'package:intl/intl.dart' as intl;
class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Orders'),
      body: Padding(padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(20, (index) => Container(
                margin: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  color: greyTextfield,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: ListTile(
                onTap: (){
                  Get.to(()=>OrderDetailsScreen());
                },
                title: boldText(text: "93402020042442", color: greyFont),
                subtitle: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month, color: greyFont,),
                        const SizedBox(width: 10,),
                        boldText(text:intl.DateFormat().add_yMEd().format(DateTime.now()), color: greyFont )

                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.payment, color: greyFont,),
                        const SizedBox(width: 10,),
                        boldText(text: "Unpaid", color: redColor )

                      ],
                    )
                  ],
                ),
                trailing: boldText(text: "\$50", color: purpleColor, size: 16.0),
                          ),
              ))),
            
          ],
        ),
      ),
      ),
    );
  }
}