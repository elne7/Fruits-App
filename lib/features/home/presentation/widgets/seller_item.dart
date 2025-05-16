import 'package:flutter/material.dart';

class SellerItem extends StatelessWidget {
  const SellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/imgs/Offer.png'),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Seller Name',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(Icons.delivery_dining_sharp, color: Colors.grey),
                    const Text(
                      'Delivery Charges: 0.5 KD',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(Icons.circle, color: Colors.grey, size: 8),
                    const SizedBox(width: 5),
                    const Text(
                      'Open',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.circle, color: Colors.grey, size: 8),
                    const SizedBox(width: 5),
                    const Text(
                      'Food',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '4.5',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text(
                        '2.5 KM',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const Icon(Icons.location_on, color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
