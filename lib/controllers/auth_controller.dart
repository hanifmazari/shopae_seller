import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/firebase_const.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;

  // text controllers
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  // login method

  Future<UserCredential?> loginMethod({context}) async {
    
    UserCredential? userCredenttial;
    try {
      userCredenttial = await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      
      Get.snackbar(e.toString(), e.toString(),
          snackPosition: SnackPosition.BOTTOM);
      
    }
    return userCredenttial;
  }

  // signup method
  // No need to signup method admin will add the seller only

  // signout Methode

  signutMethode(context) async {
    try {
      await auth.signOut();
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
