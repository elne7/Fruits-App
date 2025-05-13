import 'package:flutter/material.dart';
import 'package:fruits_app/core/colors.dart';
import 'package:fruits_app/features/registeration/presentation/widgets/custom_sign_in_button.dart';
import 'package:fruits_app/features/registeration/presentation/widgets/custom_text_field.dart';

class DataSignInViewBody extends StatelessWidget {
  const DataSignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Fruit Market',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Sign Up to Wikala',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              title: 'Full Name',
              hintText: 'First and Last Name',
            ),
            const SizedBox(height: 20),
            CustomTextField(title: 'Password', hintText: 'Password'),
            const SizedBox(height: 20),
            CustomSignInButton(
              text: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              bgColor: kPrimaryColor,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
