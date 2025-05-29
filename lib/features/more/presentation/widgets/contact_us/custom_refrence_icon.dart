import 'package:flutter/material.dart';

class CustomRefrenceIcon extends StatelessWidget {
  const CustomRefrenceIcon({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.withAlpha(100), width: 1),
      ),
      child: IconButton(icon: Image.asset(icon), onPressed: onPressed),
    );
  }
}
