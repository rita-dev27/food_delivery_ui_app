import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/home/category_page.dart';
import 'package:flutter_project_1/page/home/order_history_page.dart';
import 'package:flutter_project_1/page/home/profile_page.dart';
import 'package:flutter_project_1/page/home/search_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter App",
      home: SearchPage(),
    );
  }
}
