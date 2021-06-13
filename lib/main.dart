import 'package:flutter/material.dart';
import 'package:flutter_shopping_cart/pages/home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
