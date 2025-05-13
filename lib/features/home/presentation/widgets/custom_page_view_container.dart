import 'package:flutter/material.dart';

class CustomPageViewContainer extends StatelessWidget {
  const CustomPageViewContainer({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: 280,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(children: [Image.asset(image)]),
      ),
    );
  }
}
