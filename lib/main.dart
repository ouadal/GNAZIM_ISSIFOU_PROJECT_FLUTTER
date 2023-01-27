import 'package:essivi_app/pages/CustomerModel.dart';
import 'package:essivi_app/pages/gestionn.dart';
import 'package:essivi_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'onboarding_screen.dart';
import 'pages/Gestion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :super(key:key);
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
     
      OnBoardingScreen(),
       //Gestionn(),
      
      //LoginPage(),
      
      
    );
  }
}
