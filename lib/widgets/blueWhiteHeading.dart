import 'package:flutter/material.dart';


class blueWhiteHeading extends StatelessWidget {
  final String s;
  final rang;
  const blueWhiteHeading({
    required this.s,required this.rang
    
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Create a ",
      style: TextStyle(
          height: 0.7,
          fontFamily: 'Sansation-Bold',
          fontSize: 24,
          color: rang),
    );
  }
}
