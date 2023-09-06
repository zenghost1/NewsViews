import 'package:flutter/material.dart';
import 'package:newsviews/screens/otp.dart';
import 'package:newsviews/screens/signin.dart';
import 'package:newsviews/screens/walk3.dart';
// import 'package:google_fonts/google_fonts.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
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
                          child: Text(
                            "Create a ",
                            style: TextStyle(
                                height: 0.7,
                                fontFamily: 'Sansation-Bold',
                                fontSize: 24,
                                color: Color(0xFFDADADA)),
                          ),
                        ),
                        Text(
                          "NewsViews ",
                          style: TextStyle(
                              height: 0.7,
                              fontFamily: 'Sansation-Bold',
                              fontSize: 24,
                              color: Color(0xFF00CCFF)),
                        ),
                      ],
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "account",
                        style: TextStyle(
                            fontFamily: 'Sansation-Bold',
                            fontSize: 24,
                            color: Color(0xFFDADADA)),
                      ),
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
                          TextFormField(
                            style: const TextStyle(
                                fontSize: 13, fontFamily: 'Sansation-bold'),
                            decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                filled: true,
                                fillColor: const Color(0xFFDADADA),
                                hintText: "Enter your Email",
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
                          const SizedBox(height: 8),
                          TextFormField(
                            style: const TextStyle(
                                fontSize: 13, fontFamily: 'Sansation-bold'),
                            decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                filled: true,
                                fillColor: const Color(0xFFDADADA),
                                hintText: "Enter Your Phone Number",
                                labelText: "Phone Number",
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
                            style: const TextStyle(
                                fontSize: 13, fontFamily: 'Sansation-bold'),
                            obscureText: true,
                            decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                filled: true,
                                fillColor: const Color(0xFFDADADA),
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
                            child: const Text("Sign Up",
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
                                      builder: (context) => const otp()));
                            },
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
                    const Text(
                      "Already have an account",
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
                                  builder: (context) => const signin()));
                        },
                        child: const Text(
                          " Sign In",
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
