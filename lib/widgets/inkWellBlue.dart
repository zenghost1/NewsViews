import 'package:flutter/material.dart';

import '../core/themes/themes.dart';

class inkWellBlue extends StatelessWidget {
  final String s;
  final double size;
  final Widget whereTo;
  const inkWellBlue({
    required this.s,required this.whereTo,required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => whereTo));
      },
      child: Text(
        s,
        style: TextStyle(
            fontFamily: 'Sansation-Bold',
            fontSize: size,
            color: blueaccent),
      ),
    );
  }
}

