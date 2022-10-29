import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gundamapprx/Screen/Detail/detail_s.dart';
import 'package:gundamapprx/Screen/Home/appbar.dart';
import 'package:gundamapprx/Screen/Home/food_page_body.dart';
import 'package:gundamapprx/welcome.dart';

class ArgumentsProduct {
  final String id;
  final String type;
  final String name;
  final String price;
  final String image;

  ArgumentsProduct(this.id, this.type,this.name, this.price,this.image);
}

class HomePageS extends StatefulWidget {
  
  @override
  _HomePageSState createState() => _HomePageSState();
}

class _HomePageSState extends State<HomePageS> {
  
  var data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBarDe(context,),
        body: Column());
  }
}
