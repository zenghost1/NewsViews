import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsviews/screens/otp.dart';
import 'package:newsviews/screens/signup.dart';
import 'package:newsviews/screens/walk3.dart';
import 'package:newsviews/screens/forgotpass1.dart';

// import 'package:google_fonts/google_fonts.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

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
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 36.0),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.symmetric(vertical:25)),
                    Row(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Hi There!",
                            style: TextStyle(
                                fontFamily: 'Sansation-Bold',
                                fontSize: 24,
                                color: Color(0xFFDADADA)),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5)),
                        Image.asset("assets/Waving_Hand_Emoji.png", width: 30),
                      ],
                    ),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Welcome back, Sign in to your account",
                          style: TextStyle(
                              fontFamily: 'Sansation',
                              fontSize: 14,
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
                                filled: true,
                                fillColor: const Color(0xFFDADADA),
                                hintText: "Enter Your Email",
                                labelText: "Email",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
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
                          TextFormField(
                            obscuringCharacter: '●',
                            style: const TextStyle(
                                fontSize: 13, fontFamily: 'Sansation'),
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xFFDADADA),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                hintText: "Enter Your Password",
                                labelText: "Password",
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                    icon: Icon(
                                      _passwordVisible
                                          ? Icons.remove_red_eye_sharp
                                          : Icons.visibility_off,
                                      color: const Color(0xFF999999),
                                    )),
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
                    Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Forgotpass1()));
                          },
                          child: const Text(
                            " Forgot Password?",
                            style: TextStyle(
                                fontFamily: 'Sansation-Bold',
                                fontSize: 13,
                                color: Color(0xFF00CCFF)),
                          ),
                        )),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
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
                            style: ElevatedButton.styleFrom(
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 10.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const otp()));
                            },
                            child: const Text("Sign In",
                                style: TextStyle(
                                    fontFamily: 'Sansation-Bold',
                                    fontSize: 22,
                                    letterSpacing: 1.5,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFdadada))),
                          ),
                        ),
                      ),
                    ),
                    const Row(children: <Widget>[
                      Expanded(child: Divider(thickness: 0.1)),
                      Text("    OR    ",
                          style: TextStyle(
                              fontFamily: 'Sansation-Bold',
                              fontSize: 13,
                              color: Color(0xFF999999))),
                      Expanded(child: Divider(thickness: 0.1)),
                    ]),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text("Continue With",
                          style: TextStyle(
                              fontFamily: 'Sansation-Bold',
                              fontSize: 13,
                              color: Color(0xFF999999))),
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
                    const Text(
                      "Dont have an account?",
                      style: TextStyle(
                          fontFamily: 'Sansation',
                          fontSize: 13,
                          color: Color(0xFF999999)),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const signup()));
                        },
                        child: const Text(
                          " Sign Up",
                          style: TextStyle(
                              fontFamily: 'Sansation-Bold',
                              fontSize: 15,
                              color: Color(0xFF00CCFF)),
                        )),
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
