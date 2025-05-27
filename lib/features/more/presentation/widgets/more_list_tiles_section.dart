import 'package:flutter/material.dart';
import 'package:fruits_app/features/more/presentation/widgets/language/select_lang_dialoge.dart';
import 'package:fruits_app/features/more/presentation/widgets/more_list_tile_item.dart';

class MoreListTilesSection extends StatelessWidget {
  const MoreListTilesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MoreListTileItem(
            icon: Icons.person_outline_rounded,
            title: 'Profile',
          ),
          MoreListTileItem(
            icon: Icons.format_list_numbered_rounded,
            title: 'My Orders',
          ),
          MoreListTileItem(
            icon: Icons.favorite_outline_rounded,
            title: 'Favorites',
          ),
          MoreListTileItem(
            icon: Icons.language,
            title: 'Language',
            onTap: () {
              langDialogBuilder(context);
            },
          ),
          MoreListTileItem(icon: Icons.headset_outlined, title: 'Support'),
          MoreListTileItem(icon: Icons.handshake, title: 'Terms & Conditions'),
          MoreListTileItem(icon: Icons.info_outline_rounded, title: 'About Us'),
        ],
      ),
    );
  }
}
