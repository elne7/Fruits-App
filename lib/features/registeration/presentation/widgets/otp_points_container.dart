import 'package:flutter/material.dart';
import 'package:fruits_app/features/registeration/presentation/widgets/otp_point.dart';

class OtpPointsContainer extends StatelessWidget {
  const OtpPointsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      children: [OtpPoint(), OtpPoint(), OtpPoint(), OtpPoint()],
    );
  }
}
