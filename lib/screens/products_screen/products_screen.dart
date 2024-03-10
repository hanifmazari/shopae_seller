import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/const/lists.dart';
import 'package:shopae_seller/screens/products_screen/add_product.dart';
import 'package:shopae_seller/screens/products_screen/product_detail_screen.dart';
import 'package:shopae_seller/screens/widgets/appbar_widget.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';
import 'package:intl/intl.dart' as intl;

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(()=> AddProduct());
        },
        backgroundColor: purpleColor,
        child:const Icon(Icons.add),
      ),
      appBar: appBarWidget(title: 'Products',
      
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(
                      20,
                      (index) => Card(
                            child: ListTile(
                              onTap: () {
                                Get.to(()=>const ProductDetailPage());
                              },
                              leading: Image.asset(
                                'assets/images/p4.jpeg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              title: boldText(
                                  text: "Product name", color: greyFont),
                              subtitle:
                                  Row(
                                    children: [
                                      normalText(text: "\$30", color: darkGreyFont),
                                      const SizedBox(width: 10,),
                                      normalText(text: "Featured", color: greenColor)
                                    ],
                                  ),
                              trailing: PopupMenuButton(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  itemBuilder: (context) => [
                                        PopupMenuItem(
                                            onTap: () {},
                                            child: Column(
                                                children: List.generate(
                                                    3,
                                                    (index) => Row(
                                                          children: [
                                                            popupMenuIcons[
                                                                index],
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                            popupManueTitle[
                                                                index],
                                                          ],
                                                        )))),
                                      ]),
                            ),
                          ))),
            ],
          ),
        ),
      ),
    );
  }
}
