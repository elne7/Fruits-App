import 'package:flutter/material.dart';
import 'package:fruits_app/features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_app/features/splash_view/data/repo/splash_repo.dart';

class SplashRepoImpl implements SplashRepo {
  @override
  navigateToHome(context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OnBoardingView()),
    );
  }
}
