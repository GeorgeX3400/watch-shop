import 'package:ecommerceuiapp/pages/products/ui/product_info_page.dart';
import 'package:ecommerceuiapp/data/data.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final Watch watch;
  const ProductTile({super.key, required this.watch});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProductInfoPage(watch: watch) ));
      },
      child: Card(       
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start, 
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(watch.imageUrl)
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.25),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 8),
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(watch.brand, style: TextStyle(fontWeight: FontWeight.w600),),
                      Text(watch.model),
                      
                    ],
                  ),
                ),
              )
      ])),
    );
  }
}
