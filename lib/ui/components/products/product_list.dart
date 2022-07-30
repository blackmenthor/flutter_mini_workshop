import 'package:flutter/material.dart';
import 'package:flutter_workshop_depok/core/models/product.dart';
import 'package:flutter_workshop_depok/ui/components/products/product_item.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0),
    required this.products,
    this.title = 'Products',
  }) : super(key: key);

  final EdgeInsets padding;
  final List<Product> products;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFAFAFA),
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0,),
          SizedBox(
            height: 250.0,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: padding,
              children: products.map((e) => ProductItem(product: e,))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
