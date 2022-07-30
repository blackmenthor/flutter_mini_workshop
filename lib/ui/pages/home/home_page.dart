import 'package:flutter/material.dart';
import 'package:flutter_workshop_depok/core/utils/constants.dart';
import 'package:flutter_workshop_depok/ui/components/banners/banner_list.dart';
import 'package:flutter_workshop_depok/ui/components/categories/category_list.dart';
import 'package:flutter_workshop_depok/ui/components/news/news_list.dart';
import 'package:flutter_workshop_depok/ui/components/products/highlighted_product_item.dart';
import 'package:flutter_workshop_depok/ui/components/products/product_list.dart';
import 'package:flutter_workshop_depok/ui/components/text_field.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
            'Mega Mall',
          style: TextStyle(
            color: Color(0xFF3669C9),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              // TODO: ONTAP
            },
            child: Image.asset(
              'res/images/ic_bell.png',
              height: 20.0,
              width: 20.0,
            ),
          ),
          const SizedBox(width: 16.0,),
          InkWell(
            onTap: () {
              // TODO: ONTAP
            },
            child: Image.asset(
              'res/images/ic_cart.png',
              height: 20.0,
              width: 20.0,
            ),
          ),
          const SizedBox(width: 16.0,),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            const Divider(
              thickness: 1.0,
            ),
            const SizedBox(height: 16.0,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ECommerceTextField(
                hint: 'Search Product Name',
                suffix: Icon(
                  Icons.search,
                ),
              ),
            ),
            const SizedBox(height: 24.0,),
            const SizedBox(
                height: 150.0,
                child: BannerList(),
            ),
            const SizedBox(height: 24.0,),
            const CategoryList(),
            const SizedBox(height: 24.0,),
            ProductList(
                products: featuredProducts,
            ),
            const SizedBox(height: 24.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: HighlightedProductItem(
                  product: highlightedProduct1,
                  color: const Color(0xFF0ACF83),
              ),
            ),
            const SizedBox(height: 24.0,),
            ProductList(
              products: bestSellersProduct,
            ),
            const SizedBox(height: 24.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: HighlightedProductItem(
                product: highlightedProduct2,
                color: const Color(0xFF3669C9),
              ),
            ),
            const SizedBox(height: 24.0,),
            ProductList(
              products: newArrivalsProduct,
            ),
            const SizedBox(height: 24.0,),
            const NewsList(),
            const SizedBox(height: 24.0,),
          ],
        ),
      ),
    );
  }
}