import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitali2/common/widgets/CTAButton.dart';
import 'package:gitali2/core/configs/appImages.dart';
import 'package:gitali2/core/configs/appVector.dart';
import 'package:gitali2/presentation/bloc/themeCubit.dart';
import 'package:gitali2/presentation/pages/authentication/SignInPage.dart';
import 'package:gitali2/presentation/pages/authentication/SignupPage.dart';
import 'package:gitali2/presentation/widgets/AuthAppBar.dart';
import 'package:google_fonts/google_fonts.dart';

class Authstartpage extends StatelessWidget {
  const Authstartpage({super.key});

  @override
  Widget build(BuildContext context) {
    double SCREEN_width = MediaQuery.sizeOf(context).width;
    double SCREEN_HEIGHT = MediaQuery.sizeOf(context).height;
    return Scaffold(
        appBar: AuthAppBar(),
        body: Stack(children: [
      Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset(
            Appimages.authImage1,
            fit: BoxFit.cover,
            height: 360,
            width: 360,
          )),
      Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            Appimages.authImage2,
            fit: BoxFit.cover,
            height: 150,
            width: 250,
          )),
      Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            Appimages.authImage3,
            fit: BoxFit.cover,
            height: 150,
              width: 200,
            ),
          ),
      Container(
          margin: EdgeInsets.only(top: SCREEN_HEIGHT * 0.40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: SCREEN_width * 0.01, right: SCREEN_width * 0.01),
                child: Text("Enjoy Listening To Music",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.lato().fontFamily,
                        color:
                            context.read<ThemeCubit>().state == ThemeMode.dark
                                ? Colors.white
                                : Colors.black)),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: SCREEN_width * 0.10,
                    right: SCREEN_width * 0.1,
                    top: 7),
                child: Text(
                    "Your Playlist Paradise Starts with Gitali.Find Your Rhythm where Every Beat Feels Personal",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.lato().fontFamily,
                        color:
                            context.read<ThemeCubit>().state == ThemeMode.dark
                                ? Colors.white
                                : Colors.black)),
              ),
              Container(
                  margin: EdgeInsets.only(
                      left: SCREEN_width * 0.10,
                      right: SCREEN_width * 0.1,
                      top: SCREEN_HEIGHT * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SignupPage()));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(8)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 6),
                            child: Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            )),
                      ),
                      InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SignInPage())),
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.teal),
                                borderRadius: BorderRadius.circular(8)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 6),
                            child: Center(
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      )
                    ],
                  )),
            ],
          ))
    ]));
  }
}
