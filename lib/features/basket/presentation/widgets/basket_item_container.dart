import 'package:flutter/material.dart';
import 'package:fruits_app/features/basket/presentation/widgets/basket_counter_container.dart';

class BasketItemContainer extends StatelessWidget {
  const BasketItemContainer({super.key, required this.offer});

  final bool offer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        color: Colors.white,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withAlpha(70),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Image.asset('assets/imgs/favorite product item.png'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Product Name',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text('12.00 KD', style: TextStyle(fontSize: 14)),
                      const SizedBox(width: 10),
                      const Text(
                        '14.00 KD',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  offer
                      ? Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFdf958f),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'Up to 10% off',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                      : const SizedBox.shrink(),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      // Add functionality to increase quantity
                    },
                    icon: const Icon(Icons.delete_forever_rounded),
                  ),
                  const SizedBox(height: 30),
                  BasketCounterContainer(),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
