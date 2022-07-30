import 'package:flutter/foundation.dart';
import 'package:flutter_workshop_depok/core/models/banner.dart';
import 'package:flutter_workshop_depok/core/models/categories.dart';
import 'package:flutter_workshop_depok/core/models/news.dart';
import 'package:flutter_workshop_depok/core/models/product.dart';

final banners = <KBanner>[
  KBanner(id: '1', imagePath: 'res/images/banner_1.png'),
  KBanner(id: '2', imagePath: 'res/images/banner_2.png'),
];

final categories = <Categories>[
  Categories(
    id: 'category_1',
    name: 'Foods',
    imagePath: 'res/images/categories/ic_food.png',
  ),
  Categories(
    id: 'category_2',
    name: 'Gift',
    imagePath: 'res/images/categories/ic_gift.png',
  ),
  Categories(
    id: 'category_3',
    name: 'Fashion',
    imagePath: 'res/images/categories/ic_fashion.png',
  ),
  Categories(
    id: 'category_4',
    name: 'Gadget',
    imagePath: 'res/images/categories/ic_gadget.png',
  ),
  Categories(
    id: 'category_5',
    name: 'Meat',
    imagePath: 'res/images/categories/ic_meat.png',
  ),
];

final featuredProducts = <Product>[
  Product(
    id: 'product_1',
    name: 'TMA-2 HD Wireless',
    imagePath: 'res/images/products/ic_product_1.png',
    price: 1500000,
    rating: 4.6,
    ratingCount: 86,
  ),
  Product(
    id: 'product_2',
    name: 'TMA-2 HD Wireless',
    imagePath: 'res/images/products/ic_product_2.png',
    price: 1500000,
    rating: 4.6,
    ratingCount: 86,
  ),
];

final highlightedProduct1 = Product(
  id: 'product_1',
  name: 'C02 - Cable Multifuntion',
  imagePath: 'res/images/products/ic_product_1.png',
  price: 1500000,
  rating: 4.6,
  ratingCount: 86,
);

final bestSellersProduct = <Product>[
  Product(
    id: 'product_2',
    name: 'TMA-2 HD Wireless',
    imagePath: 'res/images/products/ic_product_2.png',
    price: 1500000,
    rating: 4.6,
    ratingCount: 86,
  ),
  Product(
    id: 'product_3',
    name: 'TMA-2 HD Wireless',
    imagePath: 'res/images/products/ic_product_3.png',
    price: 1500000,
    rating: 4.6,
    ratingCount: 86,
  ),
];

final highlightedProduct2 = Product(
  id: 'product_2',
  name: 'Modular Headphone',
  imagePath: 'res/images/products/ic_product_2.png',
  price: 1500000,
  rating: 4.6,
  ratingCount: 86,
);

final newArrivalsProduct = <Product>[
  Product(
    id: 'product_2',
    name: 'TMA-2 HD Wireless',
    imagePath: 'res/images/products/ic_product_2.png',
    price: 1500000,
    rating: 4.6,
    ratingCount: 86,
  ),
  Product(
    id: 'product_1',
    name: 'TMA-2 HD Wireless',
    imagePath: 'res/images/products/ic_product_1.png',
    price: 1500000,
    rating: 4.6,
    ratingCount: 86,
  ),
];

final specialOffersProduct = <Product>[
  Product(
    id: 'product_3',
    name: 'TMA-2 HD Wireless',
    imagePath: 'res/images/products/ic_product_3.png',
    price: 1500000,
    discountedPrice: 1000000,
    rating: 4.6,
    ratingCount: 86,
  ),
  Product(
    id: 'product_2',
    name: 'TMA-2 HD Wireless',
    imagePath: 'res/images/products/ic_product_2.png',
    price: 1500000,
    discountedPrice: 1000000,
    rating: 4.6,
    ratingCount: 86,
  ),
];

final news = <News>[
  News(
    id: 'news_1',
    imagePath: 'res/images/news/ic_news_1.png',
    title: 'Philosophy That Addresses Topics Such As Goodness',
    gist: 'Agar tetap kinclong, bodi motor tentang dia dan aku',
    publishedDate: DateTime(2021, 1, 13)
  ),
  News(
      id: 'news_2',
      imagePath: 'res/images/news/ic_news_2.png',
      title: 'Many Inquiries Outside Of Academia Are Philosophical In The Broad Sense',
      gist: 'In one general sense, philosophy is assumed as news',
      publishedDate: DateTime(2021, 1, 13)
  ),
  News(
      id: 'news_3',
      imagePath: 'res/images/news/ic_news_3.png',
      title: 'Tips Merawat Bodi Mobil agar Tidak Terlihat Kusam',
      gist: 'Agar tetap kinclong, bodi motor tentang okok',
      publishedDate: DateTime(2021, 1, 13)
  ),
];