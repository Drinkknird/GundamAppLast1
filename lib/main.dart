import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gundamapprx/Screen/Home/firstPage.dart';
import 'package:gundamapprx/navigator.dart';
import 'package:gundamapprx/welcome.dart';
import 'package:gundamapprx/Screen/ShopMain/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstPage(),
    );
  }
}

