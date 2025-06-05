import 'package:flutter/material.dart';
import 'package:fruits_app/features/checkout/presentation/views/order_confirm_error_view.dart';
// import 'package:fruits_app/features/checkout/presentation/views/order_confirmed_view.dart';
// import 'package:fruits_app/features/order/presentation/widgets/order_tracking/order_tracking_view_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruits App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const OrderConfirmErrorView(),
    );
  }
}
