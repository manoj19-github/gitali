import 'package:flutter/material.dart';
import 'package:gitali2/common/widgets/InputField.dart';
import 'package:gitali2/core/configs/appVector.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    double SCREEN_width = MediaQuery.sizeOf(context).width;
    double SCREEN_HEIGHT = MediaQuery.sizeOf(context).height;
    return Scaffold(
        body: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(
                    top: SCREEN_HEIGHT * 0.05, left: SCREEN_width * 0.1),
                child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back_ios))),
            const SizedBox(width: 20),
            Container(
              margin: EdgeInsets.only(
                top: SCREEN_HEIGHT * 0.05,
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(Appvector.logo,
                    width: SCREEN_width * 0.3, height: 80, fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "Gitali",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.lato().fontFamily,
                        color: Colors.teal),
                  ),
                ),
              ]),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(
            left: SCREEN_width * 0.10,
            right: SCREEN_width * 0.1,
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: SCREEN_HEIGHT * 0.05),
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.lato().fontFamily,
                  ),
                ),
              ),
              InputField()
            ],
          ),
        )
      ],
    ));
  }
}
