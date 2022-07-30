import 'package:flutter/material.dart';
import 'package:flutter_workshop_depok/core/models/categories.dart';
import 'package:flutter_workshop_depok/core/models/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(right: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Colors.black.withOpacity(0.1),
          width: 0.5,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              product.imagePath,
              width: 130.0,
            ),
          ),
          const SizedBox(height: 4.0,),
          Text(
            product.name,
          ),
          const SizedBox(height: 8.0,),
          Text(
            'Rp. ${product.price}',
            style: const TextStyle(
              color: Color(0xFFFE3A30),
            ),
          ),
          const SizedBox(height: 8.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                color: Color(0xFFFFC120),
                size: 11.0,
              ),
              const SizedBox(width: 4.0,),
              Text(
                product.rating.toString(),
                style: const TextStyle(
                  fontSize: 10.0,
                ),
              ),
              const SizedBox(width: 16.0,),
              Text(
                '${product.ratingCount} reviews',
                style: const TextStyle(
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
