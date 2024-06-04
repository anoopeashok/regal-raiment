
import 'package:flutter/material.dart';

import '../../../shared/dimensions.dart';

class AuthenticationHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(Dimensions.size12),
        
        child: Image.asset(
          'assets/logo/logo.png',
          height: Dimensions.size150,
          fit: BoxFit.cover,
        ),
    );
  }
}
