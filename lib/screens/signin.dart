import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsviews/core/themes/themes.dart';
import 'package:newsviews/screens/otp.dart';
import 'package:newsviews/screens/signup.dart';
import 'package:newsviews/screens/walk3.dart';
import 'package:newsviews/screens/forgotpass1.dart';
import 'package:newsviews/widgets/backButton.dart';
import 'package:newsviews/widgets/boldTextFuncs.dart';
import 'package:newsviews/widgets/formField.dart';
import 'package:newsviews/widgets/inkWellBlue.dart';
import 'package:newsviews/widgets/normalTextFuncs.dart';
import 'package:newsviews/widgets/obsecureFormField.dart';
import 'package:newsviews/widgets/onBoardingButton.dart';
import 'package:newsviews/widgets/smallTextFunc.dart';

// import 'package:google_fonts/google_fonts.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
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
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 36.0),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.symmetric(vertical: 25)),
                    Row(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: boldTextFuncs(s: "Hi There!"),
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5)),
                        Image.asset("assets/Waving_Hand_Emoji.png", width: 30),
                      ],
                    ),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: normalTextFuncs(
                            s: "Welcome back, Sign in to your account")),
                    Form(
                        child: Container(
                      padding: const EdgeInsets.only(top: 20, bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          formField(hint: "Enter Your Email", label: "Email"),
                          const SizedBox(height: 8),
                          obsecureFormField(
                            hint: "Enter Your Password",
                            label: "Password",
                          ),
                        ],
                      ),
                    )),
                    Align(
                        alignment: Alignment.topLeft,
                        child: inkWellBlue(
                          s: " Forgot Password?",
                          whereTo: Forgotpass1(),
                          size: 13,
                        )),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child:
                          onboardingButton(name: "Sign In", screenName: otp()),
                    ),
                    Row(children: <Widget>[
                      Expanded(child: Divider(thickness: 0.1)),
                      small13TextFunc(
                        s: "    OR    ",
                      ),
                      Expanded(child: Divider(thickness: 0.1)),
                    ]),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: small13TextFunc(s: "Continue With"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: white3,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50.0, vertical: 8.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Walk3Screen()));
                              },
                              child: const Image(
                                image: AssetImage("assets/Google.png"),
                                width: 30.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFFDADADA),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50.0, vertical: 8.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Walk3Screen()));
                              },
                              child: const Image(
                                image: AssetImage("assets/Apple.png"),
                                width: 30.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    small13TextFunc(s: "Dont have an account?"),
                    inkWellBlue(s: " Sign Up", whereTo: signup(), size: 15),
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
