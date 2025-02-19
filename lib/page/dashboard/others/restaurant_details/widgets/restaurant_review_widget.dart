import 'package:flutter/material.dart';

class RestaurantReviewWidget extends StatelessWidget {
  const RestaurantReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 129, 10, 10),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.07999999821186066),
              offset: Offset(0, 4),
              blurRadius: 25)
        ],
      ),
    );
  }
}
