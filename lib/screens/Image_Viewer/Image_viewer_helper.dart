import 'package:flutter/material.dart';

class ImagePlaceHolder extends StatelessWidget {
  // To make pictures dynamic......
  final String? ImagePath;
  const ImagePlaceHolder({super.key, this.ImagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        ImagePath!,
        fit: BoxFit.cover,
      ),
    );
  }
}
