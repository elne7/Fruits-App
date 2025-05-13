import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(color: kPrimaryColor),
          child: Image.asset('assets/imgs/Frame 2891.png', fit: BoxFit.cover),
        ),
      ),
    );
  }
}
