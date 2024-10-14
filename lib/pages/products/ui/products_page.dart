import 'package:ecommerceuiapp/pages/products/ui/product_tile.dart';
import 'package:ecommerceuiapp/data/data.dart';
import 'package:flutter/material.dart';

// class ProductsPage extends StatelessWidget {
//   const ProductsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [

//       ],
//     );
//   }
// }

class ProductsPage extends StatelessWidget {
  // Sample data for products
  final List<String> discountedProducts = List.generate(10, (index) => 'Discounted Product $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce App'),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Discounted Products',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: discountedProducts.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      width: 120,
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(discountedProducts[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 3 / 2,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ProductTile(watch: watches[index],);
                },
                childCount: watches.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
