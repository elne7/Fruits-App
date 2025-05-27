import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

class OrderItem extends StatefulWidget {
  const OrderItem({super.key, required this.status});

  final String status;

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  Color cardColor = Colors.red;

  @override
  void initState() {
    switch (widget.status) {
      case 'delivering':
        cardColor = kOrangeColor;
        break;
      case 'finished':
        cardColor = kGreenColor;
        break;
      case 'working':
        cardColor = kBlueColor;
        break;
      case 'canceled':
        cardColor = kRedColor;
        break;
      case 'delivered':
        cardColor = kBurbleColor;
        break;
      case 'new':
        cardColor = kLightBlueColor;
        break;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              elevation: 2,
              shape: CircleBorder(),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: cardColor.withAlpha(50),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: cardColor,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '#882610',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  '9 Sep * 4 items',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                ),
                const SizedBox(height: 3),
                Text.rich(
                  TextSpan(
                    text: 'Status: ',
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                    children: [
                      TextSpan(
                        text: 'Pending',
                        style: TextStyle(color: cardColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Material(
              elevation: 2,
              shape: CircleBorder(),
              child: CircleAvatar(
                radius: 32,
                backgroundColor: cardColor,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 32,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
