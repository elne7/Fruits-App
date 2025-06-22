import 'package:flutter/material.dart';
import 'package:fruits_app/features/onboarding/presentation/widgets/not_selected_point.dart';
import 'package:fruits_app/features/onboarding/presentation/widgets/selected_point.dart';

class SwitchPoints extends StatelessWidget {
  const SwitchPoints({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == 1) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectedPoint(),
          const SizedBox(width: 5),
          NotSelectedPoint(),
          const SizedBox(width: 5),
          NotSelectedPoint(),
        ],
      );
    } else if (currentIndex == 2) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NotSelectedPoint(),
          const SizedBox(width: 5),
          SelectedPoint(),
          const SizedBox(width: 5),
          NotSelectedPoint(),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NotSelectedPoint(),
          const SizedBox(width: 5),
          NotSelectedPoint(),
          const SizedBox(width: 5),
          SelectedPoint(),
        ],
      );
    }
  }
}
