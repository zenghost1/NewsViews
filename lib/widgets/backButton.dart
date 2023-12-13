import 'package:flutter/material.dart';

import '../core/themes/themes.dart';

class backButton extends StatelessWidget {
  const backButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
          minimumSize:
              MaterialStateProperty.all<Size>(const Size.fromRadius(22)),
          shape:
              MaterialStateProperty.all<OutlinedBorder>(const CircleBorder()),
          backgroundColor: MaterialStateProperty.all(grey2.withOpacity(0.6))),
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
        weight: 40,
        size: 22,
        color: blueaccent,
      ),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
