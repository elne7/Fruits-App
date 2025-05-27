import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText, required this.title});

  final String title;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: Colors.grey, fontSize: 16)),
          const SizedBox(height: 7),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withAlpha(80),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: TextFormField(
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: hintText ?? '',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: kPrimaryColor),
                ),
              ),
              onChanged: (value) {
                // Handle the input value
              },
            ),
          ),
        ],
      ),
    );
  }
}
