import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/dashboard/category/category_page.dart';
import 'package:flutter_project_1/page/dashboard/home/home_page.dart';
import 'package:flutter_project_1/page/dashboard/order_history/order_history_page.dart';
import 'package:flutter_project_1/page/dashboard/profile/profile_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = 0;

  List<Widget> pages = [
    HomePage(),
    CategoryPage(),
    OrderHistoryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF4F5F7),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            backgroundColor: Colors.white,
            elevation: 0,
            selectedItemColor: Color(0xffEF9F27),
            unselectedItemColor: Color(0xffC1C7D0),
            selectedFontSize: 14,
            unselectedFontSize: 14,
            showSelectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Amicons.lucide_layout_dashboard), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Amicons.remix_compass), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Amicons.vuesax_receipt_2_1), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Amicons.iconly_profile_fill), label: ""),
            ]),
        body: pages[selectedIndex]);
  }
}
