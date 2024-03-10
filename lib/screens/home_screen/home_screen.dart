import 'package:flutter/material.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/screens/widgets/appbar_widget.dart';
import 'package:shopae_seller/screens/widgets/dashboard_button.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Dashboard'),
      body: Padding(padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              dashboardButton(context, title: "Products", count: "80", icon: Icons.inventory_2_outlined),
              dashboardButton(context, title: "Orders", count: "30", icon: Icons.shopping_bag_outlined),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              dashboardButton(context, title: "Rating", count: "80", icon: Icons.star_rate_outlined),
              dashboardButton(context, title: "Total Sles", count: "30", icon: Icons.shop),
            ],
          ),
          const SizedBox(height: 10,),
          const Divider(),
          const SizedBox(height: 10,),
          boldText(text: 'Popular Products', color: purpleColor,size: 20.0),
          ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: List.generate(3, (index) => ListTile(
            onTap: (){},
            leading: Image.asset('assets/images/p4.jpeg', width: 100,height: 100,fit: BoxFit.cover,),
            title: boldText(text: "Product name", color: greyFont),
            subtitle: normalText(text: '\$30', color: darkGreyFont),
          )))
        ],
      ),),
    );
  }
}