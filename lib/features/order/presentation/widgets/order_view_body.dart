import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/app_bar_title.dart';
import 'package:fruits_app/features/order/presentation/widgets/order_item.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(title: 'My Orders'),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(color: Colors.grey.withAlpha(30), width: 1.0),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        padding: const EdgeInsets.only(top: 16),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            child: OrderItem(status: 'Delivered'),
          );
        },
      ),
    );
  }
}
