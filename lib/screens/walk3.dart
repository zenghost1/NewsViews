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
            style: TextStyle(fontSize: 35, color: Colors.white, height: 1),
          ),
          Wrap(
            children: [
              Text(
                'Your ',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              Text(
                'Flavour',
                style: TextStyle(
                  fontSize: 35,
                  color: Color(0xFF00CCFF),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 30),
            child: Text(
              "Tailored precisely to your preferences. Our AI algorithms learn from your interactions, ensuring the content you see aligns perfectly with your interests.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
