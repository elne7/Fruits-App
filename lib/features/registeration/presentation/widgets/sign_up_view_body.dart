import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_app/core/constants/colors.dart';
import 'package:fruits_app/features/registeration/presentation/widgets/custom_sign_in_button.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              'Welcome to Our app',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            CustomSignInButton(
              text: Text('Sign In with Phone Number'),
              icon: Icons.phone,
              bgColor: Colors.white,
            ),
            const SizedBox(height: 20),
            CustomSignInButton(
              text: Text('Sign In with Google'),
              // icon: FontAwesomeIcons.google,
              icon: Icons.g_mobiledata_rounded,
              bgColor: Colors.white,
            ),
            const SizedBox(height: 20),
            CustomSignInButton(
              text: Text(
                'Sign In with Facebook',
                style: TextStyle(color: Colors.white),
              ),
              icon: Icons.facebook,
              iconColor: Colors.white,
              bgColor: const Color(0xFF235C95),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already member?', style: TextStyle(fontSize: 16)),
                const SizedBox(width: 10),
                const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                Text(
                  'By continuing you agree to our',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  ' Terms of Service',
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
                Text(' and our', style: TextStyle(fontSize: 16)),
                Text(
                  ' Privacy Policy',
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
