import 'package:flutter/material.dart';
import 'package:flutter_workshop_depok/core/models/categories.dart';
import 'package:flutter_workshop_depok/core/models/news.dart';
import 'package:flutter_workshop_depok/core/models/product.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    Key? key,
    required this.news,
  }) : super(key: key);

  final News news;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8.0,),
                  Text(
                    news.gist,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  const SizedBox(height: 8.0,),
                  Text(
                    news.publishedDate.toString().substring(0, 10),
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              news.imagePath,
              height: 80.0,
              width: 80.0,
            ),
          ],
        ),
        const Divider(
          thickness: 1.0,
          height: 36.0,
          color: Color(0xFFEDEDED),
        ),
      ],
    );
  }
}
