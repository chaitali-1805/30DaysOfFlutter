import 'package:flutter/material.dart';
import 'package:flutter_catlog/core/store.dart';
import 'package:flutter_catlog/pages/home_page.dart';
import 'package:flutter_catlog/pages/login_page.dart';
import 'package:flutter_catlog/pages/cart_page.dart';
import 'package:flutter_catlog/utils/routes.dart';
import 'package:flutter_catlog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(
    store: MyStore(),
    child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage()
      },
    );
  }
}
