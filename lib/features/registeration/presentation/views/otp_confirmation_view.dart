import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';
import 'package:fruits_app/features/registeration/presentation/widgets/custom_sign_in_button.dart';
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
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
            const SizedBox(height: 50),
            OtpPointsContainer(),
            const SizedBox(height: 50),
            CustomSignInButton(
              text: Text(
                'Confirm',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              bgColor: kPrimaryColor,
            ),
            const SizedBox(height: 50),
            const Text(
              '60',
              style: TextStyle(fontSize: 40, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not Received?', style: TextStyle(fontSize: 16)),
                const SizedBox(width: 10),
                const Text(
                  'Sind Again',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
