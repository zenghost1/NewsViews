import 'package:flutter/material.dart';
import 'package:newsviews/core/themes/themes.dart';
import 'package:newsviews/widgets/walkDesc.dart';
import 'package:newsviews/widgets/walkHeading.dart';
import 'package:newsviews/widgets/walkImage.dart';

class Walk1Screen extends StatelessWidget {
  const Walk1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: darkbgcolor,
      body: Column(
        children: [
          SizedBox(height: 100),
          walkImage(
            path: "assets/hand.png",
          ),
          SizedBox(
            height: 60,
          ),
          walkHeading(
            text: 'Revolutionizing',
            rang: white3,
          ),
          walkHeading(text: 'News Delivery With', rang: white3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              walkHeading(text: 'Short Videos', rang: blueaccent),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 30),
            child: walkDesc(
              text:
                  'Experience news like never before with our engaging app. Dive into intriguing short video news update.',
            ),
          ),
        ],
      ),
    );
  }
}
