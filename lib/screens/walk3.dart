import 'package:flutter/material.dart';


class Walk3Screen extends StatelessWidget {
  const Walk3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF060606),
      body: Column(
        children: [
          SizedBox(height: 100),
          Image(
            image: AssetImage("assets/hand1.png"),
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            'Serving News in ',
            style: TextStyle(fontFamily: "Sansation-Bold",height: 1,fontSize: 35, color: Color(0xffdadada)),
          ),
          
              Text(
                'Your Best',
                style: TextStyle(fontFamily: "Sansation-Bold",height: 1,fontSize: 35, color: Color(0xffdadada)),
              ),
              Text(
                'Flavour',
                style: TextStyle(
                  fontFamily: "Sansation-Bold",height: 1,fontSize: 35,
                  color: Color(0xFF00CCFF),
                ),
              ),
            
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 30),
            child: Text(
              "Tailored just for you, our advanced AI evolves with your interactions, ensuring every content piece perfectly aligns with your interests.",
              style: TextStyle(fontFamily: "Sansation",height: 1.3,fontSize: 16, color: Color(0xff999999)),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
