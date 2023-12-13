import 'package:flutter/material.dart';
import '../core/themes/themes.dart';


class walkDesc extends StatelessWidget {
  final String text;
  const walkDesc({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: "Sansation",
          height: 1.3,
          fontSize: 16,
          color: grey4),
      textAlign: TextAlign.center,
    );
  }
}