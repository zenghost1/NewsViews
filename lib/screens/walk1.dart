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
            'The quickest and',
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'most ',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              Text(
                'Trusted ',
                style: TextStyle(
                  fontSize: 35,
                  color: Color(0xFF00CCFF),
                ),
              ),
              Text(
                'App',
                style: TextStyle(fontSize: 35, color: Colors.white),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 30),
            child: Text(
              'Our commitment to speed ensures that you are among the first to know. No more waiting – get breaking , developments, and stories at your fingertips, instantly.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
