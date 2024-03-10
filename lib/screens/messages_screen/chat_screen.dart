import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/screens/messages_screen/components/chat_bubble.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon:const Icon(Icons.arrow_back), color: darkGreyFont,),
        title: boldText(text: "Chats", size: 16.0, color: greyFont),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Expanded(child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index){
            return chatBubble();
          })),
          const SizedBox(height: 10,),
           SizedBox(height: 50,
          child: Row(
            children: [
              Expanded(
                child: TextFormField(decoration: const InputDecoration(
                  hintText: "Enter message",
                  border: InputBorder.none,
                  
                ),

                )),
                IconButton(onPressed: (){}, icon: Icon(Icons.send, color: purpleColor,))
            ],
          ),),

        ],),
      ),
    );
  }
}