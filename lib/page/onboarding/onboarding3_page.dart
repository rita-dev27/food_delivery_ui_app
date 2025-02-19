import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/login/login_by_email_page.dart';
import 'package:flutter_project_1/page/auth/login/widgets/custom_button.dart';
import 'package:flutter_project_1/page/onboarding/widgets/onboardingtile_widget.dart';

class Onboarding3Page extends StatelessWidget {
  const Onboarding3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OnboardingTileWidget(
                image: 'assets/image/onboarding_3.jpg',
                title: '+24K Restaurants',
                subtitle:
                    'Easily find your favorite food and have it delivered in record time.'),
            CustomButtonWidget(
                color: Color(0xffEF9F27),
                title: 'Get started',
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginByEmailPage()),
                    (route) => false,
                  );
                }),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
