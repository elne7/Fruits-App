import 'package:flutter/material.dart';

class CustomPaymentMethod extends StatelessWidget {
  const CustomPaymentMethod({
    super.key,
    required this.paymentMethod,
    required this.cardImg,
  });

  final String paymentMethod;
  final String cardImg;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
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
          Image.asset(cardImg, width: 32, height: 32),
          const SizedBox(width: 8.0),
          Text(
            paymentMethod,
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
