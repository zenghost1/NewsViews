import 'package:flutter/material.dart';
import '../core/themes/themes.dart';

class obsecureFormField extends StatelessWidget {
  final String hint;
  final String label;
  // bool _passwordVisible=false;

  const obsecureFormField({
    super.key,
    required this.hint,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscuringCharacter: '●',
      style: const TextStyle(fontSize: 13, fontFamily: 'Sansation'),
      // obscureText: !_passwordVisible,
      decoration: InputDecoration(
          filled: true,
          fillColor: white3,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintText: hint,
          labelText: label,
          suffixIcon: IconButton(
              onPressed: () {
                // setState(() {
                //   _passwordVisible = !_passwordVisible;
                // });
              },
              // icon: Icon(
              //   _passwordVisible
              //       ? Icons.remove_red_eye_sharp
              //       : Icons.visibility_off,
              //   color: formfieldtextcolor,
              // )),
              icon: Icon(Icons.remove_red_eye_rounded)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          labelStyle: const TextStyle(
              fontFamily: 'Sansation-Bold',
              fontSize: 15,
              color: grey4),
          hintStyle: const TextStyle(
              fontFamily: 'Sansation-Bold',
              fontSize: 13,
              color: grey4),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: blueaccent, width: 2.5),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
