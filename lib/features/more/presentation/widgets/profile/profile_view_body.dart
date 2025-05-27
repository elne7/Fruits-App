import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/app_bar_title.dart';
import 'package:fruits_app/core/widgets/custom_no_icon_button.dart';
import 'package:fruits_app/features/more/presentation/widgets/profile/profile_welcome_section.dart';
import 'package:fruits_app/features/registeration/presentation/widgets/custom_text_field.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(title: 'Fruits Market'),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(color: Colors.grey.withAlpha(30), width: 1.0),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 32),
            ProfileWelcomeSection(),
            const SizedBox(height: 20),
            CustomTextField(
              title: 'Full Name',
              hintText: 'First and Last Name',
            ),
            const SizedBox(height: 20),
            CustomTextField(
              title: 'Phone Number with Whatsapp',
              hintText: 'Mobile Number',
            ),
            const SizedBox(height: 20),
            CustomTextField(title: 'Password', hintText: 'Password'),
            const SizedBox(height: 30),
            CustomNoIconButton(text: 'Update', bgColor: 'green'),
          ],
        ),
      ),
    );
  }
}
