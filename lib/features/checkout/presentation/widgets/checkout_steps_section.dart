import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class CheckoutStepsSection extends StatefulWidget {
  const CheckoutStepsSection({super.key});

  @override
  State<CheckoutStepsSection> createState() => _CheckoutStepsSectionState();
}

class _CheckoutStepsSectionState extends State<CheckoutStepsSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildStep('Delivery Time', true),
            Expanded(
              child: DottedLine(
                lineLength: 150.0,
                dashLength: 8.0,
                lineThickness: 2.0,
                dashColor: Colors.grey.withAlpha(50),
              ),
            ),
            _buildStep('Delivery Address', false),
            Expanded(
              child: DottedLine(
                lineLength: 150.0,
                dashLength: 8.0,
                lineThickness: 2.0,
                dashColor: Colors.grey.withAlpha(50),
              ),
            ),
            _buildStep('Payment', false),
          ],
        ),
        const SizedBox(height: 16.0),
        Divider(color: Colors.grey.withAlpha(50), thickness: 2.0),
      ],
    );
  }
}

// MARK: buildStep
Widget _buildStep(String title, bool isActive) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isActive ? Colors.green : Colors.grey,
            width: 2.0,
          ),
        ),
        child: Icon(
          Icons.circle,
          size: 10.0,
          color: isActive ? Colors.green : Colors.grey,
        ),
      ),
      const SizedBox(height: 4.0),
      Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.green : Colors.grey,
        ),
      ),
    ],
  );
}
