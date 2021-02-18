import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catlog/models/catlog.dart';
import 'package:flutter_catlog/widgets/drawer.dart';
import 'package:flutter_catlog/widgets/item_widget.dart';
import 'dart:convert';
// Day 11 context tree learning

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Chaitali";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catlogJson = await rootBundle.loadString("assets/files/catlog.json");
    final decodedData = jsonDecode(catlogJson);
    var productsData = decodedData["products"];
    CatlogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatlogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catlog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatlogModel.items != null && CatlogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatlogModel.items.length,
                itemBuilder: (context, index) =>  ItemWidget(
                    item: CatlogModel.items[index],
                  
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
