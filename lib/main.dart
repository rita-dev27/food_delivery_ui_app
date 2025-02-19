import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/dashboard/dashboard_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter App",
      home: DashboardPage(),
    );
  }
}
