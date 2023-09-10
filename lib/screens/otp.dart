import 'package:flutter/material.dart';
import 'package:newsviews/screens/alldone.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Container(
              //     padding: const EdgeInsets.only(top: 20, left: 8),
              //     child: TextButton(
              //         style: ButtonStyle(
              //             minimumSize: MaterialStateProperty.all<Size>(
              //                 const Size.fromRadius(22)),
              //             shape: MaterialStateProperty.all<OutlinedBorder>(
              //                 const CircleBorder()),
              //             backgroundColor:
              //                 MaterialStateProperty.all(const Color(0xFF444444))),
              //         onPressed: () {
              //           Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                   builder: (context) => const signin()));
              //         },
              //         child: Container(
              //           width: 30,
              //           child: const Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //             children: [
              //               Icon(
              //                 Icons.arrow_back_ios_new_rounded,
              //                 color: Color(0xFF00CCFF),
              //               )
              //             ],
              //           ),
              //         )),
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                    const Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Verify it's You",
                            style: TextStyle(
                                fontFamily: 'Sansation-Bold',
                                fontSize: 24,
                                color: Color(0xFFDADADA)),
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                            Text(
                              "We sent a code to ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  height: 0.7,
                                  fontFamily: 'Sansation',
                                  fontSize: 14,
                                  color: Color(0xFF999999)),
                            ),
                            Text(
                              " pr**************t@gmail.com",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  height: 0.7,
                                  fontFamily: 'Sansation',
                                  fontSize: 14,
                                  color: Color(0xFF444444)),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Enter it here to verify your Identity. ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Sansation',
                                fontSize: 14,
                                color: Color(0xFF999999)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
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
                                hintText: "Enter the code",
                                labelText: "Enter the Code",
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
                              color: Color(0xFF999999)),
                        ),
                        InkWell(
                            onTap: null,
                            child: Text(
                              " Resend Code",
                              style: TextStyle(
                                  fontFamily: 'Sansation-Bold',
                                  fontSize: 15,
                                  color: Color(0xFF00CCFF)),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "0:40s",
                      style: TextStyle(
                          height: 0.1,
                          fontFamily: 'Sansation',
                          fontSize: 13,
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
                            child: const Text("Confirm",
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
                                      builder: (context) => const alldone()));
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
      ),
    );
  }
}
