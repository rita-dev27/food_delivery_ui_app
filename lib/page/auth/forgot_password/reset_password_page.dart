import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/login/widgets/image_texttile.dart';
import 'package:flutter_project_1/page/auth/login/widgets/custom_button.dart';
import 'package:flutter_project_1/page/dashboard/dashboard_page.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              SizedBox(height: 58),
              ImageTextTileWidget(
                image: 'assets/image/cook_1.jpg',
                heading: 'Reset your password',
                title: 'At least 8 characters including uppercase',
                subtitle: 'and lowercase letters',
                highlightedsubtitle: '',
              ),
              SizedBox(height: 22),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF4F5F7),
                    hintText: 'New Password',
                    hintStyle: TextStyle(color: Color(0xff7A869A)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.transparent)),
                    suffix:
                        Icon(Amicons.remix_eye_fill, color: Color(0xff979797)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.transparent))),
              ),
              SizedBox(height: 6),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF4F5F7),
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(color: Color(0xff7A869A)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.transparent)),
                    suffix:
                        Icon(Amicons.remix_eye_fill, color: Color(0xff979797)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.transparent))),
              ),
              SizedBox(height: 16),
              CustomButtonWidget(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardPage()),
                      (route) => false,
                    );
                  },
                  color: Color(0xffF7CF93),
                  title: 'Update'),
              SizedBox(height: 22)
            ],
          ),
        ),
      ),
    );
  }
}
