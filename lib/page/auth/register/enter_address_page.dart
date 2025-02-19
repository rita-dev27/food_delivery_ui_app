import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/login/widgets/image_texttile.dart';
import 'package:flutter_project_1/page/home/home_page.dart';

class EnterAddressPage extends StatelessWidget {
  const EnterAddressPage({super.key});

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
                image: 'assets/image/location.jpg',
                heading: 'Find Nearby Restaurants',
                title: 'Enter your location or allow access to your ',
                subtitle: 'location to find restaurants near you.',
                highlightedsubtitle: '',
              ),
              SizedBox(height: 40),
              TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF4F5F7),
                  hintText: 'Use current location',
                  hintStyle: TextStyle(color: Color(0xff172B4D)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent)),
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                onFieldSubmitted: (value) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                    (route) => false,
                  );
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Amicons.iconly_location_curved_fill,
                    color: Colors.grey,
                  ),
                  suffix: Icon(
                    Amicons.flaticon_cross_circle_rounded_fill,
                    color: Color(0xff172B4D),
                  ),
                  filled: true,
                  fillColor: Color(0xffF4F5F7),
                  hintText: 'Enter a new address',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent)),
                ),
              ),
              SizedBox(
                height: 24,
              )
            ],
          ),
        ),
      ),
    );
  }
}
