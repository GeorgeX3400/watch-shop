import 'package:ecommerceuiapp/data/data.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  List<Watch> cartList = [];
  double totalSum = 0;

  void addToCart(Watch watch) {
    cartList.add(watch);
    totalSum += watch.price;
    notifyListeners();
  }

  void removeFromCart(Watch watch) {
    if (cartList.contains(watch)) totalSum -= watch.price;
    cartList.remove(watch);
    notifyListeners();
  }
}
