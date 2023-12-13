import 'package:flutter/material.dart';
import 'package:newsviews/core/themes/themes.dart';
import 'package:newsviews/widgets/walkDesc.dart';
import 'package:newsviews/widgets/walkHeading.dart';
import 'package:newsviews/widgets/walkImage.dart';

class Walk2Screen extends StatelessWidget {
  const Walk2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: darkbgcolor,
      body: Column(
        children: [
          SizedBox(height: 100),
          walkImage(path: "assets/hand2.png"),
          SizedBox(
            height: 60,
          ),
          walkHeading(text: 'Elevate Your News', rang: white3),
          walkHeading(text: 'Experience with a', rang: white3),
          walkHeading(text: 'Swipe', rang: blueaccent),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 30),
            child: walkDesc(
                text:
                    "Swipe right for what matters, left for what doesn't. Fine-tune your preferences with a simple swipe."),
          )
        ],
      ),
    );
  }
}
