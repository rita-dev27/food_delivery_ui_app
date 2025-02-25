import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/dashboard/dashboard_page.dart';
import 'package:flutter_project_1/page/onboarding/onboarding1_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter App",
      debugShowCheckedModeBanner: true,
      home: Onboarding1Page(),
    );
  }
}
