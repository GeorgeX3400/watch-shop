import 'package:ecommerceuiapp/pages/favorites/logic/favorites_provider.dart';
import 'package:ecommerceuiapp/pages/favorites/ui/favorite_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = Provider.of<FavoritesProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Favorites'),
        ),
        body: ListView.builder(
            itemCount: favorites.favoriteWatches.length,
            itemBuilder: (context, index) {
              return FavoriteItemTile(
                watch: favorites.favoriteWatches[index],
              );
            }));
  }
}
