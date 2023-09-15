import 'package:flutter/material.dart';
import 'package:newsviews/screens/forgotpass2Deprecated.dart';
import 'package:newsviews/screens/signin.dart';
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
          leading: IconButton(
            style: ButtonStyle(
                minimumSize:
                    MaterialStateProperty.all<Size>(const Size.fromRadius(22)),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                    const CircleBorder()),
                backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF444444).withOpacity(0.6))),
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              weight: 40,
              size: 22,
              color: Color(0xFF00CCFF),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        backgroundColor: const Color(0xFF060606),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.symmetric(vertical: 100)),
                  Image.asset("assets/fingerprint.png", width: 40),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontFamily: 'Sansation-Bold',
                            fontSize: 24,
                            color: Color(0xFFDADADA)),
                      ),
                    ],
                  ),
                  const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "No worries, We'll send you the reset instructions",
                        style: TextStyle(
                            fontFamily: 'Sansation',
                            fontSize: 13,
                            color: Color(0xFF999999)),
                      )),
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
                              hintText: "Enter Your Email",
                              labelText: "Email",
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
                      ],
                    ),
                  )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Container(
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            gradient: const LinearGradient(colors: [
                              Color(0xFF00ACD7),
                              Color(0xFF002E3A)
                            ])),
                        child: ElevatedButton(
                          child: const Text("Confirm Email",
                              style: TextStyle(
                                  fontFamily: 'Sansation-Bold',
                                  fontSize: 22,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFdadada))),
                          style: ElevatedButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 10.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Forgotpass2()));
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const signin()));
                    },
                    child: const Text(
                      "<  Back to login",
                      style: TextStyle(
                          fontFamily: 'Sansation',
                          fontSize: 13,
                          color: Color(0xFF999999)),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
