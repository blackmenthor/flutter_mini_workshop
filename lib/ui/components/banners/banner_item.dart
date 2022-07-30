import 'package:flutter/material.dart';
import 'package:flutter_workshop_depok/core/models/banner.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({
    Key? key,
    required this.banner,
  }) : super(key: key);

  final KBanner banner;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      child: Image.asset(
        banner.imagePath,
        height: 150.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
