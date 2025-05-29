import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

class OrderStatusSection extends StatefulWidget {
  const OrderStatusSection({super.key});

  @override
  State<OrderStatusSection> createState() => _OrderStatusSectionState();
}

class _OrderStatusSectionState extends State<OrderStatusSection> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 24),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: VerticalDivider(thickness: 3, color: kGreenColor),
                ),
                Positioned(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NotDonePoint(),
                      NotDonePoint(),
                      DonePoint(),
                      DonePoint(),
                      DonePoint(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StatusListTile(
                  title: 'Delivered',
                  subtitle: 'Estimated for 10 September, 2021',
                ),
                StatusListTile(
                  title: 'Out for Delivery',
                  subtitle: 'Estimated for 10 September, 2021',
                ),
                StatusListTile(
                  title: 'Order Shipped',
                  subtitle: 'Estimated for 10 September, 2021',
                ),
                StatusListTile(
                  title: 'Confirmed',
                  subtitle: 'Your order has been confirmed',
                ),
                StatusListTile(
                  title: 'Order Placed',
                  subtitle: 'Your have received your order',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StatusListTile extends StatelessWidget {
  const StatusListTile({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(title),
      subtitle: Text(subtitle, style: TextStyle(color: Colors.grey.shade600)),
    );
  }
}

class DonePoint extends StatelessWidget {
  const DonePoint({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: 12, backgroundColor: kGreenColor);
  }
}

class NotDonePoint extends StatelessWidget {
  const NotDonePoint({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: kGreenColor,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      ),
    );
  }
}
