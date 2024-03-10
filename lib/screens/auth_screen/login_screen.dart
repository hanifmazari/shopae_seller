import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shopae_seller/const/consts.dart';
import 'package:shopae_seller/controllers/auth_controller.dart';
import 'package:shopae_seller/screens/home_screen/home.dart';
import 'package:shopae_seller/screens/widgets/our_button.dart';
import 'package:shopae_seller/screens/widgets/text_style.dart';

import '../widgets/logo-widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    return Scaffold(
      // To avoid bottom overflow error we can use singlechild scrollview or resizeToAvoidBottomInset: false
      resizeToAvoidBottomInset: false,

      backgroundColor: purpleColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              normalText(text: "Welcom to Shopae Seller App", size: 18.0),
              const SizedBox(
                height: 20,
              ),
              logoWidget(),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(15)),
                child: Obx(
                  () => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: controller.emailController,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email),
                              prefixIconColor: purpleColor,
                              hintText: "Email",
                              fillColor: whiteColor,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: purpleColor)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: controller.passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock),
                              prefixIconColor: purpleColor,
                              hintText: "Password",
                              fillColor: whiteColor,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: purpleColor)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {},
                              child: boldText(
                                  text: "Forgot Password?",
                                  color: purpleColor))),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          child:controller.isLoading.value? const Center(child: CircularProgressIndicator()): ourButtonWidget(
                            title: "Login",
                            onpress: () async {
                              controller.isLoading(true);
                              await controller
                                  .loginMethod(context: context)
                                  .then((value) {
                                if (value != null) {
                                  //show snackbar
                                  Get.snackbar("Login", "Login Success",
                                  
                                      snackPosition: SnackPosition.BOTTOM,
                                      duration: const Duration(seconds: 3));

                                  controller.isLoading(false);
                                  Get.offAll(() => const Home());
                                } else {
                                  controller.isLoading(false);
                                }
                              });
                              {}
                              ;
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              boldText(text: "@hanifdevs")
            ],
          ),
        ),
      )),
    );
  }
}
