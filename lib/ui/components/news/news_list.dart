import 'package:flutter/material.dart';
import 'package:flutter_workshop_depok/core/utils/constants.dart';
import 'package:flutter_workshop_depok/ui/components/news/news_item.dart';

class NewsList extends StatelessWidget {
  const NewsList({
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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Latest News',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
        const SizedBox(height: 16.0,),
        ListView(
          shrinkWrap: true,
          padding: padding,
          children: news.map((e) => NewsItem(news: e,))
              .toList(),
        ),
      ],
    );
  }
}
