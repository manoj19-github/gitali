import 'package:flutter/material.dart';

class CTAButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double btnHeight;
  final String title;
  final Color? btnColor;
  final Color? textColor;
  CTAButton(
      {required this.onPressed,
      required this.title,
      required this.btnHeight,
      this.btnColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: this.btnColor ?? Colors.teal,
        ),
        height: btnHeight,
        width: double.infinity,
        child: Center(
          child: Text(title,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: this.textColor ?? Colors.white)),
        ),
      ),
    );
  }
}
