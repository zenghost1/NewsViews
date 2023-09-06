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
            'Swipe To Refine',
            style: TextStyle(fontSize: 35, color: Colors.white, height: 1),
          ),

          Text(
            'Your News ',
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
          // Text(
          //   'News ',
          //   style: TextStyle(
          //     fontSize: 35,
          //     color: Colors.white,
          //   ),
          // ),
          Text(
            'Preferences',
            style: TextStyle(
              fontSize: 38,
              color: Color(0xFF00CCFF),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 30),
            child: Text(
              "Swipe right for what matters, left for what doesn't. Refine your experience.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
