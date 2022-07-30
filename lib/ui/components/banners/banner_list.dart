import 'package:flutter/material.dart';
import 'package:flutter_workshop_depok/core/utils/constants.dart';
import 'package:flutter_workshop_depok/ui/components/banners/banner_item.dart';

class BannerList extends StatelessWidget {
  const BannerList({
    Key? key,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0),
  }) : super(key: key);

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      padding: padding,
      children: banners.map((e) => BannerItem(banner: e,)).toList(),
    );
  }
}
