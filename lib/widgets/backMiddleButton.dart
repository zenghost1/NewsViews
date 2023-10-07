
import 'package:flutter/material.dart';

import '../core/themes/themes.dart';

class backMiddleButton extends StatelessWidget {
  final String textName;
  final Widget whereTo;
  const backMiddleButton({
    required this.textName,required this.whereTo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed:(){
          Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => whereTo));
        },
        child: Text(
          textName,
          style: TextStyle(fontFamily:'Sansation',fontSize: 13, color: Color(0xFF999999)),
          
        ));
  }
}