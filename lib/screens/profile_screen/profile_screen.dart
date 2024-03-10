import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/const/firebase_const.dart';

import 'package:shopae_seller/const/lists.dart';
import 'package:shopae_seller/controllers/auth_controller.dart';
import 'package:shopae_seller/controllers/profile_controller.dart';
import 'package:shopae_seller/screens/auth_screen/login_screen.dart';
import 'package:shopae_seller/screens/messages_screen/messages_screen.dart';
import 'package:shopae_seller/screens/profile_screen/edit_profile_screen.dart';
import 'package:shopae_seller/screens/shop_settings_screen/shop_settings_screen.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';
import 'package:shopae_seller/services/store_services.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override

  /// Builds the profile screen UI.
  ///
  /// This builds a Scaffold with an AppBar containing profile editing actions.
  /// It shows profile information fetched asynchronously using a FutureBuilder.
  /// The body contains a list of navigation options to other account management screens.
  /// Builds the profile screen UI.
  ///
  /// This builds a Scaffold with an AppBar containing profile editing actions.
  /// It shows profile information fetched asynchronously using a FutureBuilder.
  /// The body contains a list of navigation options to other account management screens.
  /// Builds the profile screen UI.
  ///
  /// This builds a Scaffold with an AppBar containing profile editing actions.
  /// It shows profile information fetched asynchronously using a FutureBuilder.
  /// The body contains a list of navigation options to other account management screens.
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: "Settings", size: 16.0),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(EditProfileScreen(
                  userName: controller.snapshotData['vendorName'],
                ));
              },
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              )),
          TextButton(
              onPressed: () async {
                await Get.find<AuthController>().signutMethode(context);
                Get.offAll(() => const LoginScreen());
              },
              child: normalText(text: 'Logout'))
        ],
      ),
      body: FutureBuilder(
        future: StoreService.getProfile(currentUser!.uid),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          } else {
            print('Hiiiiiii');
            // print(snapshot.data!.docs[0]);
            controller.snapshotData = snapshot.data!.docs[0];
            //code to get the data from firebase

            return Column(
              children: [
                ListTile(
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset('assets/images/p4.jpeg')),
                  // title: boldText(text: 'Name'),
                  title: boldText(
                      text: "${controller.snapshotData['vendorName']}"),
                  subtitle:
                      normalText(text: '${controller.snapshotData['email']}'),
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: List.generate(
                        profileButtonTitle.length,
                        (index) => ListTile(
                              onTap: () {
                                switch (index) {
                                  case 0:
                                    Get.to(() => ShopSettingsScreen());
                                    break;
                                  case 1:
                                    Get.to(() => MessagesScreen());
                                    break;
                                  default:
                                }
                              },
                              leading: profileButtonIcons[index],
                              iconColor: whiteColor,
                              title: profileButtonTitle[index],
                            )),
                  ),
                )
              ],
            );
          }
        },
      ),
    );
  }
}
