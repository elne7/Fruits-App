import 'package:flutter/material.dart';

class OtpPointsContainer extends StatelessWidget {
  const OtpPointsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // spacing: 10,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(70),
            border: Border.all(color: Colors.grey),
            shape: BoxShape.circle,
          ),
          child: Center(child: Icon(Icons.circle, color: Colors.grey)),
        ),
        const SizedBox(width: 10),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        ),
        const SizedBox(width: 10),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        ),
        const SizedBox(width: 10),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        ),
      ],
    );
  }
}
