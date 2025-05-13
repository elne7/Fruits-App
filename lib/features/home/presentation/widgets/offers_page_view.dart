import 'package:flutter/material.dart';
import 'package:fruits_app/features/home/presentation/widgets/custom_page_view_container.dart';

class OffersPageView extends StatelessWidget {
  OffersPageView({super.key});

  final List<String> images = [
    'assets/imgs/Offer.png',
    'assets/imgs/Offer.png',
    'assets/imgs/Offer.png',
    'assets/imgs/Offer.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: PageView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return CustomPageViewContainer(image: images[index]);
        },
      ),
    );
  }
}
