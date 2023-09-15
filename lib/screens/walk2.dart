import 'package:flutter/material.dart';


class Walk2Screen extends StatelessWidget {
  const Walk2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF060606),
      body: Column(
        children: [
          SizedBox(height: 100),
          Image(
            image: AssetImage("assets/hand2.png"),
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            'Elevate Your News',
            style: TextStyle(fontFamily: "Sansation-Bold",height: 1,fontSize: 35, color: Color(0xffdadada)),
          ),

          Text(
            'Experience with a',
            style: TextStyle(fontFamily: "Sansation-Bold",height: 1,fontSize: 35, color: Color(0xffdadada)),
          ),
          // Text(
          //   'News ',
          //   style: TextStyle(
          //     fontSize: 35,
          //     color: Colors.white,
          //   ),
          // ),
          Text(
            'Swipe',
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
              "Swipe right for what matters, left for what doesn't. Fine-tune your preferences with a simple swipe.",
              style: TextStyle(fontFamily: "Sansation",height: 1.3,fontSize: 16, color: Color(0xff999999)),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
