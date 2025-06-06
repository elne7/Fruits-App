import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

class CustomPaymentMethod extends StatelessWidget {
  const CustomPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(30),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.payment, color: kPrimaryColor),
          const SizedBox(width: 8.0),
          Text(
            'Credit Card/Debit Card',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Radio(
            value: 'cod',
            groupValue: 'payment_method',
            onChanged: (value) {
              // Handle radio button change
            },
          ),
        ],
      ),
    );
  }
}
