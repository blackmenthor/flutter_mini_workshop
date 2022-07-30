import 'package:flutter/material.dart';
import 'package:flutter_workshop_depok/core/models/categories.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Categories category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              category.imagePath,
            ),
          ),
          const SizedBox(height: 4.0,),
          Text(
            category.name,
          ),
        ],
      ),
    );
  }
}
