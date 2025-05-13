import 'package:flutter/material.dart';
import 'package:fruits_app/core/colors.dart';

class CustomSignInButton extends StatelessWidget {
  const CustomSignInButton({
    super.key,
    required this.text,
    this.icon,
    this.bgColor, this.iconColor,
  });

  final Text text;
  final IconData? icon;
  final Color? iconColor;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(50),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: iconColor ?? kPrimaryColor),
          const SizedBox(width: 10),
          text,
        ],
      ),
    );
  }
}
