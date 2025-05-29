import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

class ContactUsTextField extends StatelessWidget {
  const ContactUsTextField({super.key, required this.title, this.height});

  final String title;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: Colors.grey, fontSize: 16)),
          const SizedBox(height: 7),
          Container(
            height: height ?? 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withAlpha(100),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: TextFormField(
              cursorColor: kPrimaryColor,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                border: OutlineInputBorder(borderSide: BorderSide.none),
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(24),
                //   borderSide: BorderSide(color: Colors.grey),
                // ),
                // focusedBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(24),
                //   borderSide: BorderSide(color: kPrimaryColor),
                // ),
              ),
              onChanged: (value) {
                // Handle the input value
              },
            ),
          ),
        ],
      ),
    );
  }
}
