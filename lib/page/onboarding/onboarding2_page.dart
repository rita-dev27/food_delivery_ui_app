import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/login/widgets/custom_button.dart';
import 'package:flutter_project_1/page/onboarding/onboarding3_page.dart';
import 'package:flutter_project_1/page/onboarding/widgets/onboardingtile_widget.dart';

class Onboarding2Page extends StatelessWidget {
  const Onboarding2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            OnboardingTileWidget(
                image: 'assets/image/onboarding_2.jpg',
                title: 'Free shipping on all orders',
                subtitle:
                    'Free shipping on the primary order whilst the usage of CaPay fee method.'),
            CustomButtonWidget(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Onboarding3Page()),
                    (route) => false,
                  );
                },
                color: Color(0xffEF9F27),
                title: 'Get started'),
            SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
