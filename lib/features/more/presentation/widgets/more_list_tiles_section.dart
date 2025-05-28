import 'package:flutter/material.dart';
import 'package:fruits_app/features/contact_us/presentation/views/contact_us_view.dart';
import 'package:fruits_app/features/favorite/presentation/views/favorite_view.dart';
import 'package:fruits_app/features/more/presentation/views/about_us_view.dart';
import 'package:fruits_app/features/more/presentation/views/profile_view.dart';
import 'package:fruits_app/features/more/presentation/widgets/language/select_lang_dialoge.dart';
import 'package:fruits_app/features/more/presentation/widgets/more_list_tile_item.dart';
import 'package:fruits_app/features/order/presentation/views/order_view.dart';
import 'package:fruits_app/features/terms&conditions/terms_view.dart';

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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileView()),
              );
            },
          ),
          MoreListTileItem(
            icon: Icons.format_list_numbered_rounded,
            title: 'My Orders',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OrderView()),
              );
            },
          ),
          MoreListTileItem(
            icon: Icons.favorite_outline_rounded,
            title: 'Favorites',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FavoriteView()),
              );
            },
          ),
          MoreListTileItem(
            icon: Icons.language,
            title: 'Language',
            onTap: () {
              langDialogBuilder(context);
            },
          ),
          MoreListTileItem(
            icon: Icons.headset_outlined,
            title: 'Support',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactUsView()),
              );
            },
          ),
          MoreListTileItem(
            icon: Icons.handshake,
            title: 'Terms & Conditions',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TermsView()),
              );
            },
          ),
          MoreListTileItem(
            icon: Icons.info_outline_rounded,
            title: 'About Us',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUsView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
