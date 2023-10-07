import 'package:flutter/material.dart';
import 'package:newsviews/core/themes/themes.dart';
import 'package:newsviews/screens/alldone.dart';
import 'package:newsviews/screens/signin.dart';
import 'package:newsviews/screens/signup.dart';
import 'package:newsviews/widgets/backButton.dart';
import 'package:newsviews/widgets/backMiddleButton.dart';
import 'package:newsviews/widgets/boldTextFuncs.dart';
import 'package:newsviews/widgets/formField.dart';
import 'package:newsviews/widgets/normalTextFuncs.dart';
import 'package:newsviews/widgets/obsecureFormField.dart';
import 'package:newsviews/widgets/onBoardingButton.dart';

class Forgotpass2 extends StatelessWidget {
  const Forgotpass2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkbgcolor,
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(top: 20, left: 8),
                child: Row(
                  children: [
                    backButton(),
                    Spacer(),
                    buttonTopRight(
                      buttonText: "Create an account",
                      whereTo: signup(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 50)),
                  Image.asset("assets/Scan.png", width: 40),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      boldTextFuncs(s:"Reset Password"),
                    ],
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: normalTextFuncs(s:
                          "Set your new password, it must be atleast 8 digits.")),
                  Form(
                      child: Container(
                    padding: EdgeInsets.only(top: 20, bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        obsecureFormField(
                          hint: "Enter Your Password",
                          label: "Password",
                          
                        ),
                        const SizedBox(height: 8),
                        obsecureFormField(
                            hint: "Enter the Password",
                            label: "Confirm Password",
                            )
                      ],
                    ),
                  )),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: onboardingButton(
                          name: "Reset Password", screenName: alldone())),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                backMiddleButton(
                  textName: "<  Back to login",
                  whereTo: signin(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class buttonTopRight extends StatelessWidget {
  final String buttonText;
  final Widget whereTo;
  const buttonTopRight({
    required this.buttonText,
    required this.whereTo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => whereTo));
        },
        child: Text(
          buttonText,
          style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: blueaccent,
              fontFamily: 'Sansation-Bold',
              fontSize: 14,
              color: blueaccent),
        ));
  }
}


