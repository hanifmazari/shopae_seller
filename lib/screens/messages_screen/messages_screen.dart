import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/screens/messages_screen/chat_screen.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon:const Icon(Icons.arrow_back), color: darkGreyFont,),
        title: boldText(text: "Messages", size: 16.0, color: greyFont),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(20, (index) => ListTile(
              onTap: (){
                Get.to(()=>ChatScreen());
              },
              leading:const CircleAvatar(
                backgroundColor: purpleColor,
                child: Icon(Icons.person,color: whiteColor,),
              ),
              title: boldText(text: "Username", color: greyFont),
              subtitle: normalText(text: "Last message...", color: darkGreyFont),
              trailing: normalText(text: "7:45PM", color: darkGreyFont),
            )),
          ),
        ),
      ),
    );
  }
}