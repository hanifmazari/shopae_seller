import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/const/styles.dart';
import 'package:shopae_seller/screens/orders_screen/component/order_placed_widget.dart';
import 'package:shopae_seller/screens/widgets/our_button.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: greyFont,
              )),
          title: boldText(
              text: "Order Details Screen", color: greyFont, size: 16.0),
        ),
        bottomNavigationBar: SizedBox(
          height: 60,
          width: context.width,
          child: ourButtonWidget(
              color: greenColor, onpress: () {}, title: "Confirm Order"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(children: [
                //Order delivery section

                Visibility(
                  visible: true,
                  child: Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          offset: Offset.zero,
                          spreadRadius: 0.1,
                          blurRadius: .4,
                          color: lightGreyColor,
                          blurStyle: BlurStyle.outer)
                    ]),
                    child: Column(
                      children: [
                        boldText(
                            text: "Order Status",
                            color: purpleColor,
                            size: 16.0),
                        SwitchListTile(
                          activeColor: greenColor,
                          value: true,
                          onChanged: (value) {},
                          title: boldText(text: "Placed", color: greyFont),
                        ),
                        SwitchListTile(
                          activeColor: greenColor,
                          value: true,
                          onChanged: (value) {},
                          title: boldText(text: "Confirmed", color: greyFont),
                        ),
                        SwitchListTile(
                          activeColor: greenColor,
                          value: true,
                          onChanged: (value) {},
                          title: boldText(text: "on Delivery", color: greyFont),
                        ),
                        SwitchListTile(
                          activeColor: greenColor,
                          value: true,
                          onChanged: (value) {},
                          title: boldText(text: "Delivered", color: greyFont),
                        )
                      ],
                    ),
                  ),
                ),

                //Order details section
                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        offset: Offset.zero,
                        spreadRadius: 0.1,
                        blurRadius: .4,
                        color: lightGreyColor,
                        blurStyle: BlurStyle.outer)
                  ]),
                  child: Column(
                    children: [
                      orderPlacedDetails(
                          d1: "order_code",
                          d2: "shipping_mtehod",
                          title1: 'Order Code',
                          title2: 'Shipping Method'),
                      orderPlacedDetails(
                          d1: DateTime.now().minute,
                          // d1: intl.DateFormat()
                          //     .add_yMd()
                          //     .format(data['order_data'].toDate()),
                          d2: "paynt_mtd",
                          title1: 'Order data',
                          title2: 'Payment Mtd'),
                      orderPlacedDetails(
                          d1: "Unpaid",
                          d2: "Order Placed",
                          title1: 'Payment Status',
                          title2: 'Delivery Status'),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Shipping Address",
                                    style: TextStyle(fontFamily: semibold),
                                  ),
                                  Text('Name: '),
                                  Text('Email:'),
                                  Text("City:"),
                                  Text('State: '),
                                  Text('Address: '),
                                  Text('Phone: '),
                                  Text('Postal Code: '),
                                ]),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            boldText(text: "Total Amount", color: purpleColor),
                            boldText(text: "\$300.0", color: purpleColor),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        offset: Offset.zero,
                        spreadRadius: 0.1,
                        blurRadius: .4,
                        color: darkGreyFont,
                        blurStyle: BlurStyle.outer)
                  ]),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      boldText(
                          text: "Order Product",
                          color: purpleColor,
                          size: 16.0),
                      const SizedBox(
                        height: 10,
                      ),
                      ListView(
                          shrinkWrap: true,
                          children: List.generate(3, (index) {
                            // final order = data['orders'][index];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                orderPlacedDetails(
                                  title1: "order['title']?? 'ok'",
                                  title2: "order['tprice']".toString(),
                                  d1: "'{order['qty'].toString()}x '",
                                  d2: 'Refundalbe',
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Container(
                                    width: 30,
                                    height: 10,
                                    color: purpleColor,
                                  ),
                                ),
                                const Divider()
                              ],
                            );
                          }).toList()),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ])),
        ));
  }
}
