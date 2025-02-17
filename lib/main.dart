import 'package:appmania/screens/CartPage.dart';
import 'package:appmania/screens/DetailsPage.dart';
import 'package:appmania/screens/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "homePage",
      routes: {
        'homePage': (context) => HomePage(),
        'detailsPage': (context) => DetailsPage(),
        'cartPage': (context) => CartPage(),
      },
    );
  }
}
