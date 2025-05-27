import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/custom_no_icon_button.dart';

class MoreWelcomeSection extends StatelessWidget {
  const MoreWelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.withAlpha(120), width: 2.0),
          ),
          child: Icon(
            Icons.person_outline_rounded,
            size: 50,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Welcome, Fruits Market',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        CustomNoIconButton(text: 'Login', bgColor: 'green'),
      ],
    );
  }
}
