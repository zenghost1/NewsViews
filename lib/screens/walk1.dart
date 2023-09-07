import 'package:flutter/material.dart';


class Walk1Screen extends StatelessWidget {
  const Walk1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF060606),
      body: Column(
        children: [
          SizedBox(height: 100),
          Image(
            image: AssetImage("assets/hand.png"),
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            'Revolutionizing',
            style: TextStyle(fontFamily: "Sansation-Bold",height: 1,fontSize: 35, color: Color(0xffdadada)),
          ),
          
              Text(
                'News Delivery With',
                style: TextStyle(fontFamily: "Sansation-Bold",height: 1,fontSize: 35, color: Color(0xffdadada)),
              ),
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Short Videos',
                style: TextStyle(
                  fontFamily: "Sansation-Bold",height: 1,fontSize: 35,
                  color: Color(0xFF00CCFF),
                ),
              ),
              
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 30),
            child: Text(
              'Experience news like never before with our engaging app. Dive into intriguing short video news update.',
              style: TextStyle(fontFamily: "Sansation",height: 1.3,fontSize: 16, color: Color(0xff999999)),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
