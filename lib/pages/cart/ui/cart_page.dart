import 'package:ecommerceuiapp/pages/cart/logic/cart_provider.dart';
import 'package:ecommerceuiapp/pages/cart/ui/cart_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
        appBar: AppBar(title: Text('Cart')),
        body: ListView.builder(
          itemCount: cart.cartList.length,
          itemBuilder: (context, index) {
            return CartItemTile(watch: cart.cartList[index]);
          },  
        ),
        bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).cardColor,
          shape: AutomaticNotchedShape(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
          child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text('Total: \$${cart.totalSum}', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20, fontWeight: FontWeight.w500)),
                SizedBox(width: 30),

                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        
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
                                Ionicons.card_outline,
                                color: Theme.of(context).primaryColorLight,
                                size: 28,
                              ),
                              Text(' Checkout', style: TextStyle(color: Theme.of(context).primaryColorLight, fontSize: 20, fontWeight: FontWeight.w600))
                            ],
                          ),
                        ),
                      )),
                ),
                
              ]))),
      );
  }
}
