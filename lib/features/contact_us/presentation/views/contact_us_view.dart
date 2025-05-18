import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';
import 'package:fruits_app/core/widgets/custom_no_icon_button.dart';
import 'package:fruits_app/features/registeration/presentation/widgets/custom_text_field.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Us',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Divider(color: Colors.grey, thickness: 2),
            const SizedBox(height: 20),
            CustomTextField(title: 'Name'),
            const SizedBox(height: 20),
            CustomTextField(title: 'Mobile Number'),
            const SizedBox(height: 20),
            CustomTextField(title: 'Message'),
            const SizedBox(height: 20),
            CustomNoIconButton(text: 'Submit', bgColor: 'green'),
          ],
        ),
      ),
    );
  }
}
