import 'package:flutter/material.dart';
import 'package:fruits_app/core/colors.dart';
import 'package:fruits_app/features/splash_view/presentation/widgets/switch_points.dart';

class SecondIntroPage extends StatelessWidget {
  const SecondIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [TextButton(onPressed: () {}, child: const Text('Skip'))],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/imgs/Group 2805.png', fit: BoxFit.scaleDown),
            Text(
              'Order is on The Way',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Your order is on the way and will be delivered to you soon',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            const SizedBox(height: 15),
            SwitchPoints(currentIndex: 2),
            const SizedBox(height: 15),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}