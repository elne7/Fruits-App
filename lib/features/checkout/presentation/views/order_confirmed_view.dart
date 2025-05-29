import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';
import 'package:fruits_app/core/widgets/app_bar_title.dart';
import 'package:fruits_app/core/widgets/custom_no_icon_button.dart';

class OrderConfirmedView extends StatelessWidget {
  const OrderConfirmedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(title: 'Checkout'),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(color: Colors.grey.withAlpha(30), width: 3.0),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/imgs/confirmed.png', width: 250, height: 250),
            const SizedBox(height: 16),
            Text(
              'YOUR ORDER IS CONFIRMED!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Your order code: #243188',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),
            const SizedBox(height: 10),
            Text(
              'Thank you for choosing our products!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade600),
            ),
            const SizedBox(height: 20),
            CustomNoIconButton(
              text: 'Continue Shopping',
              bgColor: 'green',
              onTap: () {
                // Navigate to the home page or any other page
                // Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
            const SizedBox(height: 20),
            CustomNoIconButton(
              text: 'Track Order',
              bgColor: 'white',
              onTap: () {
                // Navigate to the order tracking page
                // Navigator.pushNamed(context, '/orderTracking');
              },
            ),
          ],
        ),
      ),
    );
  }
}
