// ignore_for_file: prefer_const_constructors

import 'package:ecommerceuiapp/data/data.dart';
import 'package:ecommerceuiapp/pages/cart/logic/cart_provider.dart';
import 'package:ecommerceuiapp/pages/favorites/logic/favorites_provider.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class ProductInfoPage extends StatelessWidget {
  final Watch watch;
  const ProductInfoPage({super.key, required this.watch});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.8,
            child: Card(
                child: Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(watch.imageUrl),
            )),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //watch model section:
                  Text(watch.brand, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  Text(watch.model, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),

                  Container(padding: EdgeInsets.all(5), decoration: BoxDecoration(color: Theme.of(context).cardColor, borderRadius: BorderRadius.circular(15)), child: Text("\$${watch.price}", style: TextStyle(fontSize: 20, color: Theme.of(context).primaryColor, fontWeight: FontWeight.w700))),

                  SizedBox(
                    height: 20,
                  ),
                  Text(watch.description, style: TextStyle(fontSize: 15)),
                ],
              ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).cardColor,
          shape: AutomaticNotchedShape(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
          child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        final cart = Provider.of<CartProvider>(context, listen: false);
                        cart.addToCart(watch);
                         ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Product has been added to cart.', style: TextStyle(fontSize: 18)),
                            duration: Duration(seconds: 3),  // Duration for the SnackBar to stay on screen
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Theme.of(context).primaryColor, width: 3),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Ionicons.cart_outline,
                                color: Theme.of(context).primaryColorLight,
                                size: 28,
                              ),
                              Text(' Add to cart', style: TextStyle(color: Theme.of(context).primaryColorLight, fontSize: 20, fontWeight: FontWeight.w600))
                            ],
                          ),
                        ),
                      )),
                ),
                SizedBox(width: 10),
                GestureDetector(
                    onTap: () {
                      final favorites = Provider.of<FavoritesProvider>(context, listen: false);
                      if (favorites.inFavoriteList(watch)) {
                        favorites.remove(watch);
                      } else {
                        favorites.add(watch);
                      }
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Theme.of(context).primaryColor, width: 3),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(Ionicons.heart_outline, size: 28, color: Theme.of(context).primaryColorLight),
                        ))))
              ]))),
    );
  }
}
