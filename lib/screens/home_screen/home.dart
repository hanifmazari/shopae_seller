import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/controllers/home_controller.dart';
import 'package:shopae_seller/screens/home_screen/home_screen.dart';
import 'package:shopae_seller/screens/orders_screen/orders_screen.dart';
import 'package:shopae_seller/screens/products_screen/products_screen.dart';
import 'package:shopae_seller/screens/profile_screen/profile_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //to call the controller
    var controller = Get.put(HomeController());

    //List of Screens for Bottom Navigation bar
    var navScreens = [
      HomeScreen(),
      ProductScreen(),
      OrdersScreen(),
      ProfileScreen()
    ];

    //List of Icons for bottom navigation bar
    var bottomNavBar = const [
      BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined), label: "Dashboard"),
      BottomNavigationBarItem(
          icon: Icon(Icons.inventory_2_outlined), label: "Products"),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined), label: "Orders"),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined), label: "Settings")
    ];

    return Scaffold(
      bottomNavigationBar: Obx(()=>BottomNavigationBar(
            selectedItemColor: purpleColor,
            type: BottomNavigationBarType.fixed,
            //Use ontap to change the screen to different screens
            onTap: (index) => controller.navIndex.value = index,
            currentIndex: controller.navIndex.value,
            unselectedItemColor: darkGreyFont,
            items: bottomNavBar),
      ),
      body: Obx(()=>Column(
          children: [
            Expanded(
              // To show the screen 
              child: navScreens.elementAt(controller.navIndex.value)),
          ],
        ),
      ),
    );
  }
}
