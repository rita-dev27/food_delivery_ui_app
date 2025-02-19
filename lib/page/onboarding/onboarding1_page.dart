import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/login/widgets/custom_button.dart';
import 'package:flutter_project_1/page/onboarding/onboarding2_page.dart';

class Onboarding1Page extends StatelessWidget {
  const Onboarding1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 135,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  'assets/image/onboarding_1.jpg',
                ),
              ),
              SizedBox(height: 75),
              Text(
                'Diverse & sparkling food.',
                style: TextStyle(
                  color: Color(0xff172B4D),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 13),
              Text(
                ' We use the best local ingredients to create fresh and delicious food and drinks.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10, color: Color(0xff7A869A)),
              ),
              SizedBox(height: 85),
              // Get started
              CustomButtonWidget(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Onboarding2Page()),
                      (route) => false,
                    );
                  },
                  color: Color(0xffEF9F27),
                  title: 'Get started'),
              SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}
