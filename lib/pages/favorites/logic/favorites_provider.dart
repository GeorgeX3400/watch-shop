import 'package:ecommerceuiapp/data/data.dart';
import 'package:flutter/material.dart';

class FavoritesProvider with ChangeNotifier {
  List<Watch> favoriteWatches = [];

  bool inFavoriteList(Watch watch) {
    return favoriteWatches.contains(watch);
  }

  void add(Watch watch) {
    favoriteWatches.add(watch);
    notifyListeners();
  }

  void remove(Watch watch) {
    favoriteWatches.remove(watch);
    notifyListeners();
  }
}
