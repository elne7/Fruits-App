import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/custom_no_icon_button.dart';

class CheckOutViewBody extends StatefulWidget {
  const CheckOutViewBody({super.key});

  @override
  State<CheckOutViewBody> createState() => _CheckOutViewBodyState();
}

class _CheckOutViewBodyState extends State<CheckOutViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomNoIconButton(text: 'Continue')
      ],
    );
  }
}