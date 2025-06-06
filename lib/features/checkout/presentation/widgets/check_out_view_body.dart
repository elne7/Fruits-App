import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/custom_no_icon_button.dart';
import 'package:fruits_app/features/checkout/presentation/widgets/payment_section.dart';
// import 'package:fruits_app/features/checkout/presentation/widgets/delivery_time_section.dart';
// import 'package:fruits_app/features/checkout/presentation/widgets/delivery_address_section.dart';

class CheckOutViewBody extends StatefulWidget {
  const CheckOutViewBody({super.key});

  @override
  State<CheckOutViewBody> createState() => _CheckOutViewBodyState();
}

class _CheckOutViewBodyState extends State<CheckOutViewBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PaymentSection(),
            SizedBox(height: 16.0),
            CustomNoIconButton(text: 'Continue', bgColor: 'green'),
            const SizedBox(height: 32.0),
          ],
        ),
      ),
    );
  }
}
