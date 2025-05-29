import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';
import 'package:fruits_app/core/widgets/app_bar_title.dart';
import 'package:fruits_app/core/widgets/custom_no_icon_button.dart';

class OrderConfirmErrorView extends StatelessWidget {
  const OrderConfirmErrorView({super.key});

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
            Image.asset(
              'assets/imgs/error confirm.png',
              width: 250,
              height: 250,
            ),
            Text(
              'OPS!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kRedColor,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Error while confirming your payment/order',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),
            const SizedBox(height: 40),
            CustomNoIconButton(
              text: 'Back',
              bgColor: 'red',
              onTap: () {
                // Navigate to the home page or any other page
                // Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }
}
