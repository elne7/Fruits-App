import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

class PaymentSection extends StatefulWidget {
  const PaymentSection({super.key});

  @override
  State<PaymentSection> createState() => _PaymentSectionState();
}

class _PaymentSectionState extends State<PaymentSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Text(
            'Coupon Code',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 8.0),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Do You Have any Coupon Code?',
            suffixIcon: IconButton(
              icon: Icon(Icons.check_circle, color: Colors.green),
              onPressed: () {
                // Handle coupon code submission
              },
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        Flexible(
          child: Text(
            'Order Details',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 8.0),
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
                text: '1.50 KD',
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
        const SizedBox(height: 16.0),
        Flexible(
          child: Text(
            'Payment',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 8.0),
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
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
        ),
      ],
    );
  }
}
