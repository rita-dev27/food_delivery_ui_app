import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/forgot_password/verify_forgot_password_page.dart';
import 'package:flutter_project_1/page/auth/login/widgets/image_texttile.dart';
import 'package:flutter_project_1/page/auth/login/widgets/custom_button.dart';

class ForgotPasswordByEmailPage extends StatelessWidget {
  const ForgotPasswordByEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Amicons.remix_arrow_left_s,
              color: Colors.black,
            )),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              SizedBox(height: 58),
              ImageTextTileWidget(
                image: 'assets/image/cook_1.jpg',
                heading: 'Password Recovery',
                title: 'Enter your email to recover your password',
                subtitle: '',
                highlightedsubtitle: '',
              ),
              SizedBox(height: 22),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF4F5F7),
                  hintText: 'Username or Email',
                  hintStyle: TextStyle(color: Color(0xff7A869A)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent)),
                  suffix: Icon(Amicons.lucide_circle_check,
                      color: Color(0xff979797)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent)),
                ),
              ),
              SizedBox(height: 24),
              CustomButtonWidget(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerifyForgotPasswordPage()),
                    );
                  },
                  color: Color(0xffEF9F27),
                  title: 'Sign in'),
              SizedBox(height: 24)
            ],
          ),
        ),
      ),
    );
  }
}
