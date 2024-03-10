import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shopae_seller/const/firebase_const.dart';
import 'package:shopae_seller/screens/auth_screen/login_screen.dart';
import 'package:shopae_seller/screens/home_screen/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  void initState() {
    
    super.initState();
    checkUser();    
  }
  var isloggedin = false;
  checkUser() async {
    auth.authStateChanges().listen((User? user) {
      if (user == null && mounted) {
        
          isloggedin = false;
        
      } else {
        
         
            isloggedin = true;
          
        
      }
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: isloggedin ? const Home() : const LoginScreen(),
      theme: ThemeData(
          appBarTheme:
              const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0.0)),
    );
  }
}
