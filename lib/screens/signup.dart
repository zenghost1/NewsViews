import 'package:flutter/material.dart';
import 'package:newsviews/core/themes/themes.dart';
import 'package:newsviews/screens/otp.dart';
import 'package:newsviews/screens/signin.dart';
import 'package:newsviews/screens/walk3.dart';
import 'package:newsviews/widgets/backButton.dart';
import 'package:newsviews/widgets/blueWhiteHeading.dart';
import 'package:newsviews/widgets/boldTextFuncs.dart';
import 'package:newsviews/widgets/formField.dart';
import 'package:newsviews/widgets/inkWellBlue.dart';
import 'package:newsviews/widgets/obsecureFormField.dart';
import 'package:newsviews/widgets/onBoardingButton.dart';
import 'package:newsviews/widgets/smallTextFunc.dart';
// import 'package:google_fonts/google_fonts.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

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
                height: 60,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                    const Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: blueWhiteHeading(s: "Dont have an account?",rang: white3,),
                        ),
                        blueWhiteHeading(s: "NewsViews ", rang: blueaccent),
                      ],
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: boldTextFuncs(s: "account"),
                    ),
                    Form(
                        child: Container(
                      padding: const EdgeInsets.only(top: 20, bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            style: const TextStyle(
                                fontSize: 13, fontFamily: 'Sansation-bold'),
                            decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                filled: true,
                                fillColor: const Color(0xFFDADADA),
                                hintText: "Enter Your Full Name",
                                labelText: "Full Name",
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 12),
                                labelStyle: const TextStyle(
                                    fontFamily: 'Sansation-Bold',
                                    fontSize: 15,
                                    color: Color(0xFF999999)),
                                hintStyle: const TextStyle(
                                    fontFamily: 'Sansation-Bold',
                                    fontSize: 13,
                                    color: Color(0xFF999999)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xFF00CCFF), width: 2.5),
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          const SizedBox(height: 8),
                          formField(hint: "Enter Your Email", label: "Email"),
                          const SizedBox(height: 8),
                          formField(hint: "Enter Your Phone Number", label: "Phone Number"),
                          const SizedBox(height: 8),
                          obsecureFormField(hint: "Enter Your Password", label: "Password"),
                        ],
                      ),
                    )),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: onboardingButton(name: "Sign Up", screenName: otp()),
                    ),
                    const Row(children: <Widget>[
                      Expanded(child: Divider(thickness: 0.1)),
                      small13TextFunc(s: "    OR    "),
                      Expanded(child: Divider(thickness: 0.1)),
                    ]),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: small13TextFunc(s: "Continue With"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xFFDADADA),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50.0, vertical: 8.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
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
                                    borderRadius: BorderRadius.circular(10.0))),
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    small13TextFunc(s: "Already have an account"),
                    inkWellBlue(s: " Sign In", whereTo: signin(), size: 15),
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

