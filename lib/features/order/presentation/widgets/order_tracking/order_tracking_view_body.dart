import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/app_bar_title.dart';
import 'package:fruits_app/core/widgets/custom_no_icon_button.dart';
import 'package:fruits_app/features/order/presentation/widgets/order_tracking/cancel_order_dialoge.dart';
import 'package:fruits_app/features/order/presentation/widgets/order_tracking/order_status_section.dart';

class OrderTrackingViewBody extends StatelessWidget {
  const OrderTrackingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(title: 'Order Tracking'),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(color: Colors.grey.withAlpha(30), width: 3.0),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Your Order Code: ',
                  style: TextStyle(color: Colors.grey.shade700),
                  children: [
                    TextSpan(
                      text: '#882610',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '3 items - 37.50 KD',
                style: TextStyle(color: Colors.grey.shade600),
              ),
              const SizedBox(height: 8),
              Text(
                'Payment Method: Cash',
                style: TextStyle(color: Colors.grey.shade600),
              ),
              const SizedBox(height: 16),
              OrderStatusSection(),
              const SizedBox(height: 16),
              CustomNoIconButton(text: 'Confirm', bgColor: 'green'),
              const SizedBox(height: 10),
              CustomNoIconButton(
                text: 'Cancel Order',
                bgColor: 'red',
                onTap: () {
                  cancelOrderDialogBuilder(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
