import 'package:flutter/material.dart';
import 'package:flutter_catlog/widgets/drawer.dart';

// Day 11 context tree learning

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Chaitali";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catlog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcometo $days days of Flutter $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
