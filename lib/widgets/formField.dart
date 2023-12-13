import 'package:flutter/material.dart';

import '../core/themes/themes.dart';

class formField extends StatelessWidget {
  final String hint;
  final String label;

  const formField({
    required this.hint,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 13, fontFamily: 'Sansation-bold'),
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          filled: true,
          fillColor: white3,
          hintText: hint,
          labelText: label,
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
