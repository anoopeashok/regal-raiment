import 'package:flutter/material.dart';

class PromotionalImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/promotional_image_1.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
    );
  }
}
