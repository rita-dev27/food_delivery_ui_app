import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomButtonWidget extends StatelessWidget {
  final Color color;
  final String title;
  final Color textcolor;
  final void Function() onPressed;

  const CustomButtonWidget(
      {super.key,
      this.color = Colors.orange,
      required this.title,
      this.textcolor = Colors.white,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(
              color: textcolor,
              fontSize: 14,
            ),
          )),
    );
  }
}
