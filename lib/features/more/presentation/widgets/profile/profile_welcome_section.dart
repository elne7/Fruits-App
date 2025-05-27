import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

class ProfileWelcomeSection extends StatelessWidget {
  const ProfileWelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: kPrimaryColor, width: 2.0),
              ),
              child: Icon(
                Icons.person_outline_rounded,
                size: 50,
                color: kPrimaryColor,
              ),
            ),
            Positioned(
              bottom: -10,
              right: -10,
              child: const Icon(
                Icons.camera_alt_outlined,
                size: 38,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Text(
          'Welcome, Ahmed',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
