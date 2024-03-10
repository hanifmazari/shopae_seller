import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/controllers/profile_controller.dart';
import 'package:shopae_seller/screens/widgets/customTextField.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

class EditProfileScreen extends StatefulWidget {
  final String? userName;
  const EditProfileScreen({super.key, this.userName});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  var controller = Get.find<ProfileController>();
  @override
  void initState() {
    controller.nameController.text = widget.userName!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(
          text: "Edit Profile",
          size: 16.0,
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: normalText(
                text: "Save",
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // if data image url and controller path is empty

            Center(
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(200)),
                    child: controller.snapshotData['imageUrl'] == '' &&
                            controller.profileImagePath.isEmpty
                        ? Image.asset(
                            'assets/images/p4.jpeg',
                            fit: BoxFit.cover,
                            width: 150,
                            height: 150,
                          )
                        : controller.snapshotData['imageUrl'] != '' &&
                                controller.profileImagePath.isEmpty
                            ? Image.network(
                                controller.snapshotData['imageUrl'],
                                width: 100,
                                fit: BoxFit.cover,
                              )
                            : Image.file(
                                File(controller.profileImagePath.value),
                                fit: BoxFit.cover,
                                width: 150,
                                height: 150,
                              ))),

            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                controller.changeImage(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: whiteColor),
              child: normalText(text: "Change Image", color: purpleColor),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: whiteColor,
            ),
            const SizedBox(
              height: 10,
            ),
            customTextField(
                hint: "eg. hanifdevs",
                label: "Name",
                controller: controller.nameController),
            const SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: boldText(text: "Change Password")),
            const SizedBox(
              height: 10,
            ),
            customTextField(
                hint: "****",
                label: "Password",
                controller: controller.oldpassController),
            const SizedBox(
              height: 10,
            ),
            customTextField(
                hint: "****",
                label: "Confirm Password",
                controller: controller.newpassController)
          ],
        ),
      ),
    );
  }
}
