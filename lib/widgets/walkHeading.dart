import 'package:flutter/material.dart';
import '../core/themes/themes.dart';

class walkHeading extends StatelessWidget {
  final String text;
  final rang;
  const walkHeading({
    required this.text,required this.rang,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: "Sansation-Bold",height: 1,fontSize: 35, color: rang),
    );
  }
}