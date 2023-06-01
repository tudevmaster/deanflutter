import 'package:flutter/material.dart';
import 'package:shopmaytinh/pages/CartPage.dart';
import 'package:shopmaytinh/pages/Homepage.dart';
import 'package:shopmaytinh/pages/Login.dart';
import 'package:shopmaytinh/pages/itemPage.dart';
import 'package:shopmaytinh/pages/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => LoginScreen(),
        "homePage": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}
