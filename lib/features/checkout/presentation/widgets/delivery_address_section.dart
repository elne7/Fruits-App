import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

class DeliveryAddressSection extends StatefulWidget {
  const DeliveryAddressSection({super.key});

  @override
  State<DeliveryAddressSection> createState() => _DeliveryAddressSectionState();
}

class _DeliveryAddressSectionState extends State<DeliveryAddressSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Select Delivery Address',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        Container(
          padding: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withAlpha(30),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Add New Address',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(Icons.add, color: kPrimaryColor),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withAlpha(30),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: kPrimaryColor),
                    const SizedBox(width: 8.0),
                    Text(
                      'Address 1',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.check_circle, color: kPrimaryColor),
                  ],
                ),
                const SizedBox(height: 8.0),
                Text(
                  'John Doe',
                  style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                ),
                const SizedBox(height: 4.0),
                Text(
                  '+1 234 567 890',
                  style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                ),
                const SizedBox(height: 4.0),
                Wrap(
                  children: [
                    Text(
                      'Room # 1 - Ground Floor, Al Najoum Building, 24 B Street, Dubai - United Arab Emirates',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
