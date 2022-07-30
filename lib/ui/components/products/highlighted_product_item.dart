import 'package:flutter/material.dart';
import 'package:flutter_workshop_depok/core/models/categories.dart';
import 'package:flutter_workshop_depok/core/models/product.dart';

class HighlightedProductItem extends StatelessWidget {
  const HighlightedProductItem({
    Key? key,
    required this.product,
    required this.color,
  }) : super(key: key);

  final Product product;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0,),
                Text.rich(
                  const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Shop now ',
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              product.imagePath,
              width: 125.0,
              height: 125.0,
            ),
          ),
        ],
      ),
    );
  }
}
