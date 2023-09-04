import 'package:flutter/material.dart';
import 'package:newsviews/screens/walk3.dart';
// import 'package:google_fonts/google_fonts.dart';

class signin extends StatelessWidget {
  const signin({super.key});

  @override
  Widget build(BuildContext context) {
    final shape = StadiumBorder();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF060606),
        body: Column(
          children: [
            Align(alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(top: 20,left: 8),
                child:TextButton(
                          style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size.fromRadius(22)),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                  CircleBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF444444))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => signin()));
                          },
                          child: Container(
                            width: 30,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Color(0xFF00CCFF),
                                )
                              ],
                            ),
                          )),),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric( horizontal: 32.0),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Hi There!",
                          style:
                              TextStyle(fontFamily:'Sansation-Bold',fontSize: 24, color: Color(0xFFDADADA)),
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Image.asset("assets/Waving_Hand_Emoji.png", width: 30),
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome back, Sign in to your account",
                        style:
                            TextStyle(fontFamily:'Sansation',fontSize: 14, color: Color(0xFF999999)),
                      )),
                  Form(
                      child: Container(
                    padding: EdgeInsets.only(top:20,bottom:8 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFDADADA),
                              hintText: "Enter Your Username",
                              labelText: "Username",
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 12),
                              labelStyle: TextStyle(fontFamily:'Sansation-Bold',
                                  fontSize: 15, color: Color(0xFF999999)),
                              hintStyle: TextStyle(fontFamily:'Sansation-Bold',
                                  fontSize: 13, color: Color(0xFF999999)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF00CCFF)),
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFDADADA),
                              hintText: "Enter Your Password",
                              labelText: "Password",
                              suffixIcon: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.remove_red_eye_sharp)),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 12),
                              labelStyle: TextStyle(fontFamily:'Sansation-Bold',
                                  fontSize: 15, color: Color(0xFF999999)),
                              hintStyle: TextStyle(fontFamily:'Sansation-Bold',
                                  fontSize: 13, color: Color(0xFF999999)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF00CCFF)),
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ],
                    ),
                  )),
                  
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                          "Forgot Password?",
                          style:
                              TextStyle(fontFamily:'Sansation-Bold',fontSize: 13, color: Color(0xFF00CCFF)),
                        ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Container(
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            gradient: LinearGradient(colors: [
                              Color(0xFF00ACD7),
                              Color(0xFF002E3A)
                            ])),
                        child: ElevatedButton(
                          child: Text("Sign In",
                              style: TextStyle(fontFamily:'Sansation-Bold',
                                  fontSize: 22,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFdadada))),
                          style: ElevatedButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 10.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Walk3Screen()));
                          },
                        ),
                      ),
                    ),
                  ),
                  Row(children: <Widget>[
                    Expanded(child: Divider(thickness: 0.1)),
                    Text("    OR    ",
                        style:
                            TextStyle(fontFamily:'Sansation-Bold',fontSize: 13, color: Color(0xFF999999))),
                    Expanded(child: Divider(thickness: 0.1)),
                  ]),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Continue With",
                        style: TextStyle(fontFamily:'Sansation-Bold',fontSize: 13, color: Color(0xFF999999))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ElevatedButton(
                          child: Image(
                            image: AssetImage("assets/Google.png"),
                            width: 30.0,
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFFDADADA),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50.0, vertical: 8.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Walk3Screen()));
                          },
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ElevatedButton(
                          child: Image(
                            image: AssetImage("assets/Apple.png"),
                            width: 30.0,
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFFDADADA),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50.0, vertical: 8.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Walk3Screen()));
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:30 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an account?",
                    style: TextStyle(fontFamily:'Sansation',fontSize: 13, color: Color(0xFF999999)),
                  ),
                  TextButton(
                      onPressed: null,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontFamily:'Sansation-Bold',fontSize: 15, color: Color(0xFF00CCFF)),
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
