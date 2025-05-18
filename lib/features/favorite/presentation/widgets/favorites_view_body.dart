import 'package:flutter/material.dart';
import 'package:fruits_app/features/favorite/presentation/widgets/favorite_item.dart';

class FavoritesViewBody extends StatelessWidget {
  const FavoritesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorites'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Divider(color: Colors.grey, thickness: 2),
          const SizedBox(height: 5),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              return FavoriteItem();
            },
          ),
        ],
      ),
    );
  }
}
