import 'package:flutter/material.dart';
import 'package:fruits_app/core/colors.dart';
import 'package:fruits_app/features/registeration/presentation/widgets/otp_points_container.dart';

class OtpConfirmationView extends StatelessWidget {
  const OtpConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Fruit Market',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Enter Received OTP',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            OtpPointsContainer(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}