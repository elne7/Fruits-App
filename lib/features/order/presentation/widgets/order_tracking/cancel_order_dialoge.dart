import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/custom_no_icon_button.dart';
import 'package:fruits_app/features/contact_us/presentation/widgets/contact_us_text_field.dart';
import 'package:fruits_app/features/registeration/presentation/widgets/custom_text_field.dart';

Future<void> cancelOrderDialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Center(
          child: const Text(
            'Cancel Order',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        contentPadding: const EdgeInsets.all(20),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(title: 'Reason'),
            const SizedBox(height: 10),
            ContactUsTextField(title: 'Notes', height: 100),
          ],
        ),
        actions: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomNoIconButton(text: 'Confirm Cancelation', bgColor: 'green'),
              TextButton(
                child: Text(
                  'Close',
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      );
    },
  );
}
