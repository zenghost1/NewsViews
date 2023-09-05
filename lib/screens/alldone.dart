import 'package:flutter/material.dart';
import 'package:newsviews/screens/forgotpass2.dart';

// import 'package:google_fonts/google_fonts.dart';

class alldone extends StatelessWidget {
  const alldone({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF060606),
        body: Column(
          children: [
            
            Container(
              padding:
                  const EdgeInsets.symmetric( horizontal: 32.0),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 80)),
                  Image.asset("assets/verified.png", width: 60),
                  Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      
                        Text(
                          "All Done!",
                          style:
                              TextStyle(fontFamily:'Sansation-Bold',fontSize: 26, color: Color(0xFFDADADA)),
                        ),
                        ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                        Text(
                        "You have been completely verified.",textAlign: TextAlign.center,
                        style:
                            TextStyle(height: 0.7,fontFamily:'Sansation',fontSize: 17, color: Color(0xFF999999)),
                      ),
                      
                      
                      
                    
                  Text(
                        " You're all set to begin!",textAlign: TextAlign.center,
                        style:
                            TextStyle(fontFamily:'Sansation',fontSize: 17, color: Color(0xFF999999)),
                      ),
                  
                  
                  
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
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
                          child: Text("START",
                              style: TextStyle(fontFamily:'Sansation-Bold',
                                  fontSize: 22,
                                  letterSpacing: 2,
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
            
              
            
          ],
        ),
      ),
    );
  }
}
