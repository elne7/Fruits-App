import 'package:flutter/material.dart';

class UnderlinedText extends StatelessWidget {
  const UnderlinedText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text, style: TextStyle(color: Colors.grey, fontSize: 18)),
        const SizedBox(height: 5),
        Container(width: 38, height: 2, color: Colors.grey),
      ],
    );
  }
}
