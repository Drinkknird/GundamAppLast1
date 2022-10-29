import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gundamapprx/welcome.dart';
import 'package:gundamapprx/Screen/ShopMain/homePage.dart';


class stateNavi extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
