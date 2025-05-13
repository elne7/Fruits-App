import 'package:flutter/material.dart';

class SellerItem extends StatelessWidget {
  const SellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     color: Colors.grey[200],
            //   ),
            //   child: Image.asset(
            //     'assets/imgs/Offer.png',
            //     height: 80,
            //     width: 80,
            //   ),
            // ),
            // const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/imgs/Offer.png'),
              ),
            ),
            const Text(
              'Seller Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Location',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
