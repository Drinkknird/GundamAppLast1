import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gundamapprx/Screen/Detail/detail_s.dart';
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

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  var data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview using local json file'),
        ),
        body: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/details.json'),
            builder: (context, snapshot) {
              // Decode the JSON
              var product = json.decode(snapshot.data.toString());

              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 32, bottom: 32, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Welcome()));
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset(product[index]['image']),
                                  )),
                              Text(
                                product[index]['name'],
                                //'Note Text',
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                          //SizedBox(width: 20),
                          
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Welcome()));
                                  },
                                  child: 
                              Text(
                                product[index]['name'],
                                //'Note Text',
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                          )],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: product == null ? 0 : product.length,
              );
            },
          ),
          
        ));
  }
}
