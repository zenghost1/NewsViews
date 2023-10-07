import 'package:flutter/material.dart';
import 'package:newsviews/core/themes/themes.dart';
import 'package:newsviews/screens/forgotpass2Deprecated.dart';
import 'package:newsviews/screens/signin.dart';
import 'package:newsviews/widgets/backButton.dart';
import 'package:newsviews/widgets/backMiddleButton.dart';
import 'package:newsviews/widgets/boldTextFuncs.dart';
import 'package:newsviews/widgets/normalTextFuncs.dart';
import 'package:newsviews/widgets/obsecureFormField.dart';
import 'package:newsviews/widgets/onBoardingButton.dart';
// import 'package:newsviews/screens/signup.dart';

// import 'package:google_fonts/google_fonts.dart';

class Forgotpass1 extends StatelessWidget {
  const Forgotpass1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
          // scrolledUnderElevation: 1,
          // elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: backButton()
        ),
        backgroundColor: darkbgcolor,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.symmetric(vertical: 100)),
                  Image.asset("assets/fingerprint.png", width: 40),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      boldTextFuncs(s:"Forgot Password?"),
                    ],
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: normalTextFuncs(s:
                          "No worries, We'll send you the reset instructions")),
                  Form(
                      child: Container(
                    padding: const EdgeInsets.only(top: 20, bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        obsecureFormField(
                          hint: "Enter Your Email",
                          label: "Email",
                          
                        ),
                      ],
                    ),
                  )),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: onboardingButton(
                          name: "Confirm Email", screenName: Forgotpass2())),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                backMiddleButton(textName:  "<  Back to login",whereTo: signin(),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}




