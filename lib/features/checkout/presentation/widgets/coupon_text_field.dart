import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

class CouponTextField extends StatelessWidget {
  const CouponTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(30),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
          hintText: 'Do You Have any Coupon Code?',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
          suffixIcon: ElevatedButton(
            onPressed: () {
              // Handle coupon code submission
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor, // Background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
            child: const Text('Apply', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
