class NewsItem {
  final String imageUrl;
  final String title;
  final String description;
  final String newsName;

  NewsItem({
    required this.newsName,
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      "imageUrl": imageUrl,
      "title": title,
      "description": description,
    };
  }

  NewsItem.fromMap(Map<String, dynamic> map)
      : imageUrl = map["imageUrl"],
        title = map["title"],
        description = map["description"],
        newsName = map['newsName'];

  factory NewsItem.fromJson(Map<String, dynamic> json) {
    return NewsItem(
        imageUrl: json['image'],
        title: json['name'],
        description: json['description'],
        newsName: json['source']);
  }
}
