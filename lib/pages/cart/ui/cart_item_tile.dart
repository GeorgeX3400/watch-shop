import 'package:ecommerceuiapp/data/data.dart';
import 'package:ecommerceuiapp/pages/cart/logic/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class CartItemTile extends StatelessWidget {
  final Watch watch;
  const CartItemTile({super.key, required this.watch});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Padding(
        padding: EdgeInsets.all(10),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.2,
          child: Card(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(watch.imageUrl)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(watch.brand, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)), Text(watch.model, style: TextStyle(fontSize: 16))]),
                        Text(
                          '\$${watch.price}',
                          style: TextStyle(fontSize: 20, color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(icon: Icon(Ionicons.trash_outline, size: 40, color: Theme.of(context).primaryColorDark), onPressed: () => cart.removeFromCart(watch)),
              )
            ],
          )),
        ));
  }
}
