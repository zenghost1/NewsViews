import 'package:flutter/material.dart';
import 'package:newsviews/core/themes/themes.dart';
import 'package:newsviews/screens/alldone.dart';
import 'package:newsviews/widgets/backButton.dart';
import 'package:newsviews/widgets/boldTextFuncs.dart';
import 'package:newsviews/widgets/formField.dart';
import 'package:newsviews/widgets/normalTextFuncs.dart';
import 'package:newsviews/widgets/obsecureFormField.dart';
import 'package:newsviews/widgets/onBoardingButton.dart';
// import 'package:newsviews/screens/signin.dart';
// import 'package:google_fonts/google_fonts.dart';

class otp extends StatelessWidget {
  const otp({super.key});

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
          leading: backButton(),
        ),
        backgroundColor: darkbgcolor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: boldTextFuncs(s: "Verify it's You"),
                        ),
                      ],
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                            subheadingFunc(s: "We sent a code to "),
                            subheadingFunc(s: " pr**************t@gmail.com"),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: normalTextFuncs(
                              s: "Enter it here to verify your Identity. "),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Form(
                        child: Container(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          obsecureFormField(
                            hint: "Enter the code",
                            label: "Code",
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    )),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't recieve a code?",
                          style: TextStyle(
                              fontFamily: 'Sansation',
                              fontSize: 13,
                              color: grey4),
                        ),
                        InkWell(
                            onTap: null,
                            child: Text(
                              " Resend Code",
                              style: TextStyle(
                                  fontFamily: 'Sansation-Bold',
                                  fontSize: 15,
                                  color: blueaccent),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "0:40s",
                      style: TextStyle(
                          height: 0.1,
                          fontFamily: 'Sansation',
                          fontSize: 13,
                          color: grey4),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: onboardingButton(
                            name: "Confirm", screenName: alldone())),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class subheadingFunc extends StatelessWidget {
  final String s;
  const subheadingFunc({
    required this.s,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      s,
      textAlign: TextAlign.center,
      style: TextStyle(
          height: 0.7,
          fontFamily: 'Sansation',
          fontSize: 14,
          color: grey4),
    );
  }
}
