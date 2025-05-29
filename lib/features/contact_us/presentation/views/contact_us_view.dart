import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';
import 'package:fruits_app/core/widgets/custom_no_icon_button.dart';
import 'package:fruits_app/features/contact_us/presentation/widgets/contact_us_text_field.dart';
import 'package:fruits_app/features/contact_us/presentation/widgets/refrence_icons_container.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        shape: Border(
          bottom: BorderSide(color: Colors.grey.withAlpha(30), width: 1.0),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: kPrimaryColor,
            size: 24,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              ContactUsTextField(title: 'Name'),
              const SizedBox(height: 20),
              ContactUsTextField(title: 'Mobile Number'),
              const SizedBox(height: 20),
              ContactUsTextField(title: 'Message', height: 100),
              const SizedBox(height: 20),
              CustomNoIconButton(text: 'Submit', bgColor: 'green'),
              const SizedBox(height: 30),
              RefrenceIconsContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
