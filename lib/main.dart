import 'package:flutter/material.dart';
import 'package:fruits_app/core/layout/custom_navigation_bar.dart';
// import 'package:fruits_app/features/more/presentation/widgets/more_view_body.dart';
// import 'package:fruits_app/features/order/presentation/widgets/order_view_body.dart';
// import 'package:fruits_app/features/more/presentation/views/profile_view.dart';
// import 'package:fruits_app/features/basket/presentation/widgets/basket_view_body.dart';
// import 'package:fruits_app/features/product/presentation/widgets/product_view_body.dart';

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
      home: const CustomNavigationBar(),
    );
  }
}
