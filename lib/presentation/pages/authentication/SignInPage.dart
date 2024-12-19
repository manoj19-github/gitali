import 'package:flutter/material.dart';
import 'package:gitali2/common/widgets/CTAButton.dart';
import 'package:gitali2/common/widgets/InputField.dart';
import 'package:gitali2/core/configs/appVector.dart';
import 'package:gitali2/presentation/pages/authentication/SignupPage.dart';
import 'package:gitali2/presentation/widgets/AuthAppBar.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    double SCREEN_width = MediaQuery.sizeOf(context).width;
    double SCREEN_HEIGHT = MediaQuery.sizeOf(context).height;
    return Scaffold(
        appBar: AuthAppBar(),
        body: Column(
          children: [
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
                      "Login",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.lato().fontFamily,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InputField(
                    hintText: "Email Address",
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InputField(
                    hintText: "Password",
                    obscureText: true,
                    textInputType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  CTAButton(onPressed: () {}, title: "Sign In", btnHeight: 40),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Are you new user? ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16)),
                      const SizedBox(width: 2),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    SignupPage())),
                        child: Text(" Sign up",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.teal,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal,
                                fontSize: 20)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
