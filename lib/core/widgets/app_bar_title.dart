import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? 'Fruit Market',
      style: TextStyle(
        color: kPrimaryColor,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
