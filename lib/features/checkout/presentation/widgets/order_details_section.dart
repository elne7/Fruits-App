import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

class OrderDetailsSection extends StatelessWidget {
  const OrderDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total Items', style: TextStyle(fontSize: 16.0)),
            Text('4 items in cart', style: TextStyle(fontSize: 16.0)),
          ],
        ),
        const SizedBox(height: 4.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: TextStyle(fontSize: 16.0)),
            Text('36.00 KD', style: TextStyle(fontSize: 16.0)),
          ],
        ),
        const SizedBox(height: 4.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Charge', style: TextStyle(fontSize: 16.0)),
            Text.rich(
              TextSpan(
                text: '1.50 ',
                style: TextStyle(fontSize: 16.0),
                children: [
                  TextSpan(
                    text: 'KD',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        Divider(thickness: 2, color: Colors.grey),
        const SizedBox(height: 4.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Bag Total',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            Text(
              '37.50 KD',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
