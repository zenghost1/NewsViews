import 'package:flutter/material.dart';

import '../core/themes/themes.dart';

class small13TextFunc extends StatelessWidget {
  final String s;
  const small13TextFunc({
    required this.s,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(s,
        style: TextStyle(
            fontFamily: 'Sansation-Bold', fontSize: 13, color: grey4));
  }
}
