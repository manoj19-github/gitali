import 'package:flutter/material.dart';
import 'package:gitali2/common/widgets/CTAButton.dart';
import 'package:gitali2/core/configs/appImages.dart';
import 'package:gitali2/core/configs/appVector.dart';
import 'package:gitali2/presentation/pages/chooseMode/ChooseMode.dart';
import 'package:google_fonts/google_fonts.dart';

class Getstarted extends StatelessWidget {
  const Getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    double SCREEN_width = MediaQuery.sizeOf(context).width;
    double SCREEN_HEIGHT = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: SCREEN_width,
              height: SCREEN_HEIGHT,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Appimages.homepageBG), fit: BoxFit.cover),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Image.asset(Appvector.logo,
                          width: SCREEN_width * 0.2,
                          height: 60,
                          fit: BoxFit.cover),
                      Text(
                        "Gitali",
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.lato().fontFamily,
                            color: Colors.teal),
                      ),
                      // Spacer()
                    ]),
                    Spacer(),
                    Container(
                        margin:
                            EdgeInsets.only(bottom: 50, left: 20, right: 20),
                        child: Column(
                          children: [
                            Text(
                              "Feel the Strings of Sound!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.lato().fontFamily,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                "Discover, play, and enjoy your favorite tunes with a seamless music experience, crafted for true music lovers. Dive into an immersive music experience that plays your world,",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              height: 30,
                            ),
                            CTAButton(
                                onPressed: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  ChooseModePage()))
                                    },
                                title: "Get Started",
                                btnHeight: 50)
                          ],
                        ))
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
