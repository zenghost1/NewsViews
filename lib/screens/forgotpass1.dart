import 'package:flutter/material.dart';
import 'package:newsviews/screens/forgotpass2.dart';
import 'package:newsviews/screens/signin.dart';
import 'package:newsviews/screens/signup.dart';

// import 'package:google_fonts/google_fonts.dart';

class Forgotpass1 extends StatelessWidget {
  const Forgotpass1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF060606),
        body: Column(
          children: [
            Align(alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(top: 20,left: 8),
                child:Row(
                  children: [
                    TextButton(
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
                              )),
                              Spacer(),
                              TextButton(
                      onPressed:(){
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => signup()));
                      },
                      child: Text(
                        "Create an account",
                        style: TextStyle(decoration: TextDecoration.underline,decorationColor: Color(0xFF00CCFF) ,fontFamily:'Sansation-Bold',fontSize: 14, color: Color(0xFF00CCFF)),
                        
                      )),

                  ],
                  
                ),),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric( horizontal: 32.0),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 50)),
                  Image.asset("assets/fingerprint.png", width: 40),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      
                        Text(
                          "Forgot Password?",
                          style:
                              TextStyle(fontFamily:'Sansation-Bold',fontSize: 24, color: Color(0xFFDADADA)),
                        ),
                      
                      
                      
                    ],
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "No worries, We'll send you the reset instructions",
                        style:
                            TextStyle(fontFamily:'Sansation',fontSize: 13, color: Color(0xFF999999)),
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
                              hintText: "Enter Your Email",
                              labelText: "Email",
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
                  
                  
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Container(
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            gradient: LinearGradient(colors: [
                              Color(0xFF00ACD7),
                              Color(0xFF002E3A)
                            ])),
                        child: ElevatedButton(
                          child: Text("Confirm Email",
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
                                    builder: (context) => Forgotpass2()));
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
                      onPressed:(){
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => signin()));
                      },
                      child: Text(
                        "<  Back to login",
                        style: TextStyle(fontFamily:'Sansation',fontSize: 13, color: Color(0xFF999999)),
                        
                      )),
                  
                  
                ],
              ),
            
          ],
        ),
      ),
    );
  }
}
