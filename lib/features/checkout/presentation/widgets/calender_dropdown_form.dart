import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';
import 'package:fruits_app/features/checkout/presentation/widgets/calender_dropdown_form_logic.dart';

class CalenderDropdownForm extends StatefulWidget {
  const CalenderDropdownForm({super.key});

  @override
  CalenderDropdownFormState createState() => CalenderDropdownFormState();
}

class CalenderDropdownFormState extends State<CalenderDropdownForm> {
  final TextEditingController _textEditingController = TextEditingController();
  String selectedDate = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              _showCalendarDialog(context);
            },
            child: TextFormField(
              style: const TextStyle(
                color: kPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              controller: _textEditingController,
              decoration: const InputDecoration(
                labelText: 'Select Date',
                labelStyle: TextStyle(color: Colors.grey, fontSize: 16),

                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.grey,
                ),
                enabled: false,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  void _showCalendarDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Date'),
          content: MonthYearDropdownCalendar(
            onDateSelected: (date) {
              setState(() {
                selectedDate = date;
                _textEditingController.text = date;
              });
              Navigator.of(context).pop();
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
