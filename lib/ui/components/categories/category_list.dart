import 'package:flutter/material.dart';
import 'package:flutter_workshop_depok/core/utils/constants.dart';
import 'package:flutter_workshop_depok/ui/components/banners/banner_item.dart';
import 'package:flutter_workshop_depok/ui/components/categories/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0),
  }) : super(key: key);

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
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
          height: 76.0,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: padding,
            children: categories.map((e) => CategoryItem(category: e,))
                .toList(),
          ),
        ),
      ],
    );
  }
}
