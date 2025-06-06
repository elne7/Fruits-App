import 'package:flutter/material.dart';
import 'package:fruits_app/features/checkout/presentation/widgets/coupon_text_field.dart';
import 'package:fruits_app/features/checkout/presentation/widgets/custom_payment_method.dart';
import 'package:fruits_app/features/checkout/presentation/widgets/order_details_section.dart';

class PaymentSection extends StatefulWidget {
  const PaymentSection({super.key});

  @override
  State<PaymentSection> createState() => _PaymentSectionState();
}

class _PaymentSectionState extends State<PaymentSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Coupon Code',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          // MARK: CouponTextField
          CouponTextField(),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Text(
                'Order Details',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          // MARK: OrderDetailsSection
          OrderDetailsSection(),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Text(
                'Payment',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          CustomPaymentMethod(),
          const SizedBox(height: 16.0),
          CustomPaymentMethod(),
          const SizedBox(height: 16.0),
          CustomPaymentMethod(),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
