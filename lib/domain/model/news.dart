class News {
  final String title;
  final String description;
  final String url;
  final String photoUrl;

  const News(
    this.title,
    this.description,
    this.url,
    this.photoUrl,
  );

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      json['title'] as String,
      json['description'] as String,
      json['link'] as String,
      json['pubDate'] as String,
    );
  }
}
