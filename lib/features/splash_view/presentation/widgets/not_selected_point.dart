import 'package:flutter/material.dart';
import 'package:fruits_app/core/colors.dart';

class NotSelectedPoint extends StatelessWidget {
  const NotSelectedPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: kPrimaryColor, width: 1),
      ),
    );
  }
}
