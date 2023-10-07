import 'package:flutter/material.dart';

class walkImage extends StatelessWidget {
  final String path;
  const walkImage({
    required this.path,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(path),
      height: 200,
      fit: BoxFit.cover,
    );
  }
}