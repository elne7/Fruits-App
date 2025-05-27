import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

class MoreListTileItem extends StatelessWidget {
  const MoreListTileItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: kPrimaryColor, size: 26),
      title: Text(title, style: TextStyle(fontSize: 18)),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 18,
        color: Colors.grey,
      ),
      onTap: onTap,
    );
  }
}
