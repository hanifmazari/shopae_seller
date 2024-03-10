import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/const/lists.dart';
import 'package:shopae_seller/screens/products_screen/components/dropdown_widget.dart';
import 'package:shopae_seller/screens/products_screen/components/product_image.dart';
import 'package:shopae_seller/screens/widgets/customTextField.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
         leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back, color: whiteColor,)),
        title: boldText(text: "Add Product", color: whiteColor, size: 16.0),
        actions: [TextButton(onPressed: (){}, child: boldText(text: "Svae", color: whiteColor))],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextField(
                  hint: "e.g. Smart Tv", label: "Product name"
                ),
                const SizedBox(height: 10,),
                customTextField(
                  hint: "e.g product description", label: "Description", isDesc: true
                ),
                const SizedBox(height: 10,),
                customTextField(
                  hint: "\$100", label: "Price"
                ),
                const SizedBox(height: 10,),
                customTextField(
                  hint: "20", label: "Quantity"
                ),
                const SizedBox(height: 10,),
                productDropdown(),
                const SizedBox(height: 10,),
                productDropdown(),
                const SizedBox(height: 10,),
                boldText(text: "Choose product images"),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(3, (index) => productImage(lable: "${index+1}"))
                ),
                const SizedBox(height: 5,),
                normalText(text: "First image will be product display image", color: greyTextfield),
                const SizedBox(height: 10,),
                boldText(text: "Choose product colors"),
                const SizedBox(height: 10,),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: List.generate(3, (index) => Stack(
                    alignment: Alignment.center,
                    children: [Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(

                        
                        color: colorsList[index],
                        borderRadius: BorderRadius.circular(50)
                      ),
                      ),
                      const Icon(Icons.done, color: whiteColor,),
                      
                      ]
                  )),
                )
              ],
            ),
          ),
        ),
    );
  }
}