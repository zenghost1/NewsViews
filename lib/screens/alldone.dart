import 'package:flutter/material.dart';
import 'package:newsviews/screens/interestScreen1.dart';

// import 'package:google_fonts/google_fonts.dart';

class alldone extends StatelessWidget {
  const alldone({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF060606),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "All Done!",
                        style: TextStyle(
                            fontFamily: 'Sansation-Bold',
                            fontSize: 26,
                            color: Color(0xFFDADADA)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "You have been completely verified.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 0.7,
                        fontFamily: 'Sansation',
                        fontSize: 17,
                        color: Color(0xFF999999)),
                  ),
                  const Text(
                    " You're all set to begin!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Sansation',
                        fontSize: 17,
                        color: Color(0xFF999999)),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
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
                          child: const Text("START",
                              style: TextStyle(
                                  fontFamily: 'Sansation-Bold',
                                  fontSize: 22,
                                  letterSpacing: 2,
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
                                    builder: (context) => const interestScreen1()));
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
