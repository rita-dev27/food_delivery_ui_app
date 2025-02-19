import 'package:amicons/amicons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/login/login_by_email_page.dart';
import 'package:flutter_project_1/page/auth/login/widgets/custom_button.dart';
import 'package:flutter_project_1/page/auth/login/widgets/socialmedia_buttontile.dart';
import 'package:flutter_project_1/page/auth/register/enter_address_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
              Image.asset(
                'assets/image/cook_1.jpg',
                height: 150,
                // width: double.infinity,
              ),
              SizedBox(height: 30),
              Text(
                'Hello! Create Account',
                style: TextStyle(
                    color: Color(0xff172B4D),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(
                          color: Color(0xff7A869A),
                          fontSize: 14,
                        )),
                    TextSpan(
                        text: " Sign in",
                        style: TextStyle(
                          color: Color(0xffEF9F27),
                          fontSize: 14,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Terms of Service"');
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginByEmailPage()),
                              (route) => false,
                            );
                          })
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF4F5F7),
                  hintText: 'Your name',
                  hintStyle: TextStyle(color: Color(0xff7A869A)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent)),
                ),
              ),
              SizedBox(height: 6),
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
              SizedBox(height: 6),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF4F5F7),
                    hintText: 'Password',
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
              SizedBox(height: 12),
              CustomButtonWidget(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EnterAddressPage()),
                      (route) => false,
                    );
                  },
                  color: Color(0xffEF9F27),
                  title: 'Sign in'),
              SizedBox(height: 8),
              Text('OR', style: TextStyle(color: Color(0xff7A869A))),
              SizedBox(height: 12),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => EnterAddressPage()),
                    (route) => false,
                  );
                },
                child: SocialMediaButtonWidget(
                  icon: Icons.facebook,
                  color: Colors.blue,
                  textmedia: 'Connect with Facebook',
                  backgroundColor: Color(0xffDEEBFF),
                ),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {},
                child: SocialMediaButtonWidget(
                  icon: Amicons.remix_google_fill,
                  color: Colors.green,
                  textmedia: 'Connect with Google',
                  backgroundColor: Color(0xffF4F5F7),
                ),
              ),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
