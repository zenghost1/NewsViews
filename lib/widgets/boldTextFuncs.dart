import 'package:flutter/material.dart';
import '../core/themes/themes.dart';

class boldTextFuncs extends StatelessWidget {
  final String s;
  const boldTextFuncs({
    required this.s,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      s,
      style:
          TextStyle(fontFamily: 'Sansation-Bold', fontSize: 24, color: white3),
    );
  }
}
