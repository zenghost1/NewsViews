import 'package:flutter/material.dart';
import 'package:newsviews/core/themes/themes.dart';
import 'package:newsviews/screens/interestScreen1.dart';
import 'package:newsviews/widgets/onBoardingButton.dart';

// import 'package:google_fonts/google_fonts.dart';

class alldone extends StatelessWidget {
  const alldone({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkbgcolor,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.symmetric(vertical: 100)),
                  Image.asset(
                    "assets/verified.png",
                    width: 80,
                    scale: 1.5,
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      boldTextFunc("All Done!"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  normalTextFunc("You have been completely verified."),
                  normalTextFunc(" You're all set to begin!"),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: onboardingButton(
                        name: "START",
                        screenName: interestScreen1(),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Text boldTextFunc(String s) {
  return Text(
    s,
    style: TextStyle(fontFamily: 'Sansation-Bold', fontSize: 26, color: white3),
  );
}

Text normalTextFunc(String s) {
  return Text(
    s,
    textAlign: TextAlign.center,
    style: TextStyle(fontFamily: 'Sansation', fontSize: 17, color: grey4),
  );
}

Text buttonTextFunc(String s) {
  return Text(
    s,
    style: TextStyle(
        fontFamily: 'Sansation-Bold',
        fontSize: 22,
        letterSpacing: 2,
        fontWeight: FontWeight.w600,
        color: white3),
  );
}
