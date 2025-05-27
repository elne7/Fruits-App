import 'package:flutter/material.dart';

class BasketCounterContainer extends StatefulWidget {
  const BasketCounterContainer({super.key});

  @override
  State<BasketCounterContainer> createState() => _BasketCounterContainerState();
}

class _BasketCounterContainerState extends State<BasketCounterContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(70),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.remove, size: 15)),
            const SizedBox(width: 5),
            Text(
              '1',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 5),
            IconButton(onPressed: () {}, icon: Icon(Icons.add, size: 15)),
          ],
        ),
      ),
    );
  }
}
