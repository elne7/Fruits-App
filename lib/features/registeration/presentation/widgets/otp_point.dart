import 'package:flutter/material.dart';

class OtpPoint extends StatelessWidget {
  const OtpPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withAlpha(20),
        border: Border.all(color: Colors.grey),
        shape: BoxShape.circle,
      ),
      child: Center(child: Icon(Icons.circle, color: Colors.grey, size: 10)),
    );
  }
}
