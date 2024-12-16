import 'package:flutter/material.dart';

class CTAButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double btnHeight;
  final String title;
  CTAButton(
      {required this.onPressed, required this.title, required this.btnHeight});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.teal,
        ),
        height: btnHeight,
        width: double.infinity,
        child: Center(
          child: Text(title,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
      ),
    );
  }
}
