import 'package:flutter/material.dart';
import 'package:fruits_app/features/contact_us/presentation/widgets/custom_refrence_icon.dart';

class RefrenceIconsContainer extends StatelessWidget {
  RefrenceIconsContainer({super.key});

  final List<String> icons = [
    'assets/imgs/phone.png',
    'assets/imgs/facebook.png',
    'assets/imgs/instagram.png',
    'assets/imgs/youtube.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomRefrenceIcon(
            icon: icons[0],
            onPressed: () {
              // Handle phone icon press
            },
          ),
          CustomRefrenceIcon(
            icon: icons[1],
            onPressed: () {
              // Handle facebook icon press
            },
          ),
          CustomRefrenceIcon(
            icon: icons[2],
            onPressed: () {
              // Handle instagram icon press
            },
          ),
          CustomRefrenceIcon(
            icon: icons[3],
            onPressed: () {
              // Handle WhatsApp icon press
            },
          ),
        ],
      ),
    );
  }
}
