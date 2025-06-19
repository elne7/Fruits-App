import 'package:flutter/material.dart';
import 'package:fruits_app/features/checkout/presentation/widgets/calender_dropdown_form.dart';
import 'package:fruits_app/features/checkout/presentation/widgets/checkout_steps_section.dart';

class DeliveryTimeSection extends StatefulWidget {
  const DeliveryTimeSection({super.key});

  @override
  State<DeliveryTimeSection> createState() => _DeliveryTimeSectionState();
}

class _DeliveryTimeSectionState extends State<DeliveryTimeSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CheckoutStepsSection(),
        const SizedBox(height: 16.0),
        Container(
          padding: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withAlpha(30),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Now',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Radio(
                  value: 'now',
                  groupValue: 'delivery_time',
                  onChanged: (value) {
                    // Handle radio button change
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withAlpha(30),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Select Delivery Time',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Radio(
                      value: 'select_time',
                      groupValue: 'delivery_time',
                      onChanged: (value) {
                        // Handle radio button change
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                CalenderDropdownForm(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
