import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitali2/common/widgets/CTAButton.dart';
import 'package:gitali2/core/configs/appImages.dart';
import 'package:gitali2/core/configs/appVector.dart';
import 'package:gitali2/presentation/bloc/themeCubit.dart';
import 'package:gitali2/presentation/pages/authentication/AuthStartPage.dart';
import 'package:gitali2/presentation/pages/chooseMode/ChooseMode.dart';
import 'package:gitali2/presentation/pages/home/HomePage.dart';

import 'package:google_fonts/google_fonts.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

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
                  image: AssetImage(Appimages.choosemodeBG), fit: BoxFit.cover),
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
                    margin: EdgeInsets.only(bottom: 50, left: 20, right: 20),
                    child: Column(children: [
                      Text(
                        "Choose Mode",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.lato().fontFamily,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () => {
                              context
                                  .read<ThemeCubit>()
                                  .toggleTheme(ThemeMode.dark)
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black26,
                                    border: context.read<ThemeCubit>().state ==
                                            ThemeMode.dark
                                        ? Border.all(color: Colors.white)
                                        : Border.all(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(50)),
                                padding: EdgeInsets.all(8),
                                child: Image.asset(Appimages.moonImage)),
                          ),
                          GestureDetector(
                            onTap: () => {
                              context
                                  .read<ThemeCubit>()
                                  .toggleTheme(ThemeMode.light)
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    color: ThemeData().focusColor,
                                    border: context.read<ThemeCubit>().state ==
                                            ThemeMode.light
                                        ? Border.all(color: Colors.white)
                                        : Border.all(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(50)),
                                padding: EdgeInsets.all(8),
                                child: Image.asset(Appimages.sunImage)),
                          ),
                          // Image.asset(Appimages.sunImage),
                          // SizedBox(
                          //   height: 30,
                          // ),
                          // CTAButton(
                          //     onPressed: () => {},
                          //     title: "Get Started",
                          //     btnHeight: 50)
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      CTAButton(
                          onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Authstartpage()))
                              },
                          title: "Continue",
                          btnHeight: 50)
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
