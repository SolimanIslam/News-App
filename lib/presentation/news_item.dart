import 'package:flutter/widgets.dart';
import 'package:news_app/domain/model/news.dart';

class NewsItem extends StatelessWidget {
  final News model;
  const NewsItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO add link on click
    return Column(
      children: [
        Text(model.photoUrl),
        Text(model.title),
        Text(model.description),
      ],
    );
  }
}
