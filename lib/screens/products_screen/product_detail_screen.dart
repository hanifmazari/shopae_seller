import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/const/lists.dart';
import 'package:shopae_seller/const/styles.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back, color: greyFont,)),
          title: boldText(text: "Order Details Screen", color: greyFont, size: 16.0),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider(
                          items: [
                            Container(
                              margin: const EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/images/p4.jpeg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 350,
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                              autoPlay: true, viewportFraction: 1)),
                          const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        // title!,
                        "Product detail",
                        style:  TextStyle(
                            color: darkGreyFont,
                            fontFamily: semibold,
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(children: [
                        boldText(text: "Category", color: greyFont, size: 16.0),
                        const SizedBox(
                        width: 10,
                      ),
                        normalText(text: "Subcategory", color: greyFont, size: 14.0)
                      ],),
                      RatingBar.builder(
                          ignoreGestures: true,
                          // initialRating: double.parse(data['p_rating'][0]),
                          initialRating: 5,
                          minRating: 1,
                          maxRating: 5,
                          itemSize: 25,
                          itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                          onRatingUpdate: (rating) =>
                              {}
                              ),
                              boldText(text: "\$300", color: redColor, size: 18.0),
                              const SizedBox(height: 10,),
                              Row(
                                  children: [
                                    const SizedBox(
                                      width: 100,
                                      child: Text(
                                        'Color',
                                        style: TextStyle(color: greyFont),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: List.generate(
                                        3,
                                        (index) => GestureDetector(
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            margin: const EdgeInsets
                                                .symmetric(horizontal: 6),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      30),
                                              color: 
                                                colorsList[index]
                                                
                                                  
                                                  
                                            ),
                                          ),
                                          onTap: () {
                                          },
                                        ),),
                                      ),
                                    
                                  ],
                                ),
                                const SizedBox(height: 10),
                                //quantity row
                                 Row(children: [
                                  const SizedBox(
                                    width: 100,
                                    child: Text(
                                      'Quantity',
                                      style: TextStyle(color: greyFont),
                                    ),
                                  ),
                                  normalText(text: "20", color: greyFont)]),
                                  //description section
                                  Divider(),
                                  const SizedBox(height: 10),
                                  boldText(text: 'Description', color: darkGreyFont, ),
                                  const SizedBox(height: 10),
                                  normalText(text: "Description for this item i here ....", color: greyFont)
              ],
            ),
          ),
        ),
    );
  }
}