import 'package:flutter/material.dart';

import '../core/themes/themes.dart';

class onboardingButton extends StatelessWidget {
  final String name;
  final Widget screenName;
  const onboardingButton({
  required this.name, required this.screenName,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            gradient: const LinearGradient(colors: [
              onboardingbuttongradientcolor1,
              onboardingbuttongradientcolor2
            ])),
        child: ElevatedButton(
          child:  Text(name,
              style: TextStyle(
                  fontFamily: 'Sansation-Bold',
                  fontSize: 22,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w600,
                  color: white3)),
          style: ElevatedButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              primary: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(
                  horizontal: 40.0, vertical: 10.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0))),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  screenName));
          },
        ),
      ),
    );
  }
}