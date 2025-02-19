import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/forgot_password/reset_password_page.dart';
import 'package:flutter_project_1/page/auth/login/widgets/image_texttile.dart';
import 'package:flutter_project_1/page/auth/login/widgets/custom_button.dart';
import 'package:pinput/pinput.dart';

class VerifyForgotPasswordPage extends StatelessWidget {
  const VerifyForgotPasswordPage({super.key});

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
              SizedBox(
                height: 58,
                width: double.infinity,
              ),
              ImageTextTileWidget(
                  image: 'assets/image/cook_1.jpg',
                  heading: 'Verify your identity',
                  title: 'We have just sent a code to ',
                  subtitle: 'jos.creative@gmail.com.',
                  highlightedsubtitle: ''),
              SizedBox(height: 24),
              Pinput(
                showCursor: true,
                cursor: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 2,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Color(0xffEF9F27),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                defaultPinTheme: PinTheme(
                  width: 65,
                  height: 65,
                  textStyle: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(30, 60, 87, 1),
                      fontWeight: FontWeight.w600),
                  decoration: BoxDecoration(
                    color: Color(0xffF4F5F7),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 40),
              CustomButtonWidget(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResetPasswordPage()),
                      (route) => false,
                    );
                  },
                  color: Color(0xffEF9F27),
                  title: 'Next'),
              SizedBox(height: 16),
              CustomButtonWidget(
                onPressed: () {},
                color: Color(0xffF4F5F7),
                title: 'Send again',
                textcolor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
