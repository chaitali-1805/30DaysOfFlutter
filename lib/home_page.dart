import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  String name = "Chaitali";

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
      drawer: Drawer(),
    );
  }
}
