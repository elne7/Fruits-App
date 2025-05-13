import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

class SelectedPoint extends StatelessWidget {
  const SelectedPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        shape: BoxShape.circle,
        border: Border.all(color: const Color.fromARGB(255, 5, 107, 8), width: 1),
      ),
    );
  }
}
