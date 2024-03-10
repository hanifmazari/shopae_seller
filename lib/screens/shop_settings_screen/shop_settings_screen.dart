import 'package:flutter/material.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/screens/widgets/customTextField.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

class ShopSettingsScreen extends StatelessWidget {
  const ShopSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(
          text: "Shop Settings",
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
            customTextField(label: "Shop Name", hint: 'Mystore'),
            const SizedBox(
              height: 10,
            ),
            customTextField(label: "Shop Address", hint: 'Address'),
            const SizedBox(
              height: 10,
            ),
            customTextField(label: "Mobile", hint: '+921112133'),
            const SizedBox(
              height: 10,
            ),
            customTextField(label: "Website", hint: 'www.mystore.com'),
            const SizedBox(
              height: 10,
            ),
            customTextField(label: "Description", hint: 'my description', isDesc: true),
          ],
        ),
      ),
    );
  }
}
