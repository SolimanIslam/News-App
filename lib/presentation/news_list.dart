import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/domain/model/news.dart';
import 'package:news_app/presentation/news_item.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key? key, required this.newsItems}) : super(key: key);
  final List<News> newsItems;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Let the ListView know how many items it needs to build.
      itemCount: newsItems.length,
      // Provide a builder function. This is where the magic happens.
      // Convert each item into a widget based on the type of item it is.
      itemBuilder: (context, index) {
        final item = newsItems[index];

        return Padding(
          padding: const EdgeInsets.all(8),
          child: Container(child: NewsItem(model: item,)),
        );
      },
    );
  }
}
