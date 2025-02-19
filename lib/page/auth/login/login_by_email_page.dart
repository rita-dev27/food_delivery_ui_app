import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project_1/page/auth/forgot_password/forgot_password_by_email_page.dart';
import 'package:flutter_project_1/page/auth/login/login_by_phone_page.dart';
import 'package:flutter_project_1/page/auth/login/widgets/custom_button.dart';
import 'package:flutter_project_1/page/auth/register/register_page.dart';
import 'package:flutter_project_1/page/dashboard/dashboard_page.dart';

class LoginByEmailPage extends StatelessWidget {
  const LoginByEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          children: [
            SizedBox(height: 56),
            Image.asset(
              'assets/image/cook_1.jpg',
              height: 150,
              // width: double.infinity,
            ),
            SizedBox(height: 30),
            Text(
              'Welcome Back',
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
                      text: "Hello Jos, sign in to continue!\n Or",
                      style: TextStyle(
                        color: Color(0xff7A869A),
                        fontSize: 14,
                      )),
                  TextSpan(
                      text: " Create new account",
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
                                builder: (context) => RegisterPage()),
                            (route) => false,
                          );
                        })
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            // Username
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffF4F5F7),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    'Username or Email',
                    style: TextStyle(
                      color: Color(0xff7A869A),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Password
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffF4F5F7),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    'Password',
                    style: TextStyle(
                      color: Color(0xff7A869A),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Sign in
            CustomButtonWidget(
                color: Color(0xffEF9F27),
                title: 'Sign in',
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                    (route) => false,
                  );
                }),

            SizedBox(height: 22),
            // Forget Password
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ForgotPasswordByEmailPage()));
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Color(0xffEF9F27), fontSize: 12),
              ),
            ),

            SizedBox(height: 16),
            // Or
            Text(
              'OR',
              style: TextStyle(color: Color(0xff7A869A), fontSize: 11),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginByPhonePage()),
                );
              },
              child: Container(
                width: double.infinity,
                height: 62,
                decoration: BoxDecoration(
                  color: Color(0xffF3F8FE),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: Color(0xff1877F2),
                        size: 36,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          "Log in with Phone",
                          style: TextStyle(
                              color: Color(0xff172B4D),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardPage()),
                  (route) => false,
                );
              },
              child: Container(
                width: double.infinity,
                height: 62,
                decoration: BoxDecoration(
                  color: Color(0xffF3F8FE),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Color(0xff1877F2),
                        size: 48,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          "Connect with Facebook",
                          style: TextStyle(
                              color: Color(0xff172B4D),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardPage()),
                  (route) => false,
                );
              },
              child: Container(
                width: double.infinity,
                height: 62,
                decoration: BoxDecoration(
                  color: Color(0xffF4F5F7),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.apple,
                        color: Color(0xff1877F2),
                        size: 48,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          "Connect with Google",
                          style: TextStyle(
                              color: Color(0xff172B4D),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 60)
          ],
        ),
      )),
    );
  }
}
