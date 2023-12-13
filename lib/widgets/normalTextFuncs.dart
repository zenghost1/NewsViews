import 'package:flutter/material.dart';
import '../core/themes/themes.dart';

class normalTextFuncs extends StatelessWidget {
  final String s;
  const normalTextFuncs({
    required this.s,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      s,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontFamily: 'Sansation',
          fontSize: 14,
          color: grey4),
    );
  }
}