import 'package:flutter/material.dart';
import 'package:gitali2/core/configs/appImages.dart';

class Authstartpage extends StatelessWidget {
  const Authstartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset(
            Appimages.authImage1,
            fit: BoxFit.cover,
            height: 350,
            width: 300,
          )),
    ]));
  }
}
