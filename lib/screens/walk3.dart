import 'package:flutter/material.dart';
import 'package:newsviews/core/themes/themes.dart';
import 'package:newsviews/widgets/walkDesc.dart';
import 'package:newsviews/widgets/walkHeading.dart';
import 'package:newsviews/widgets/walkImage.dart';

class Walk3Screen extends StatelessWidget {
  const Walk3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: darkbgcolor,
      body: Column(
        children: [
          SizedBox(height: 100),
          walkImage(path: "assets/hand1.png"),
          SizedBox(
            height: 60,
          ),
          walkHeading(text: 'Serving News in ', rang: white3),
          walkHeading(text: 'Your Best', rang: white3),
          walkHeading(text: 'Flavour', rang: blueaccent),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 30),
            child: walkDesc(
                text:
                    "Tailored just for you, our advanced AI evolves with your interactions, ensuring every content piece perfectly aligns with your interests."),
          ),
        ],
      ),
    );
  }
}
