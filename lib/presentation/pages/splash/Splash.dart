import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:gitali2/core/configs/appVector.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {


  @override
  void initState() {
    
  }


  @override
  Widget build(BuildContext context) {
    double SCREEN_width = MediaQuery.sizeOf(context).width;
    double SCREEN_HEIGHT = MediaQuery.sizeOf(context).height;
    return Scaffold(
        body: Column(

      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: SCREEN_width * 1,
          height: SCREEN_HEIGHT * 0.78,
          child: Image.asset(
            Appvector.logo,
          ),
        ),
        Column(
          children: [
            Container(
              child: Text(
                "Gitali",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
            ),
            Container(
              child: Text(
                "FEEL THE STRINGS OF SOUND",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: LoadingAnimationWidget.threeArchedCircle(
                color: Colors.teal,
                size: 50,
              ),
            ),
          ],
        )
      ],
    ));
  }
}
