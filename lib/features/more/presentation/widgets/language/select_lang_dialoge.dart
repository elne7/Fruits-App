import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/custom_no_icon_button.dart';

Future<void> langDialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Center(
          child: const Text(
            'Select Language',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        contentPadding: const EdgeInsets.all(20),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Radio(
                  value: 'ar',
                  groupValue: 'selectedLanguage',
                  onChanged: (value) {
                    // Handle language change
                  },
                ),
                Image.asset(
                  'assets/imgs/saudi_arabia.png',
                  width: 30,
                  height: 20,
                ),
                const Text('العربية', style: TextStyle(fontSize: 21)),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'en',
                  groupValue: 'selectedLanguage',
                  onChanged: (value) {
                    // Handle language change
                  },
                ),
                Image.asset('assets/imgs/america.png', width: 30, height: 20),
                const Text('English', style: TextStyle(fontSize: 21)),
              ],
            ),
          ],
        ),
        actions: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomNoIconButton(text: 'Apply', bgColor: 'green'),
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
