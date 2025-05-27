import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

class CustomNoIconButton extends StatelessWidget {
  const CustomNoIconButton({
    super.key,
    required this.text,
    required this.bgColor,
  });

  final String text;
  final String? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color:
            bgColor == 'red'
                ? kRedColor
                : bgColor == 'green'
                ? kPrimaryColor
                : Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(50),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: bgColor == 'white' ? kPrimaryColor : Colors.white,
          ),
        ),
      ),
    );
  }
}
