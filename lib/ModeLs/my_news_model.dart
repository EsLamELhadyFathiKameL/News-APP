class MyNewsModeL {
  final String? newsImage;
  final String? newsTitLe;
  final String? newsDescription;
  final String newsUrL;

  MyNewsModeL({
    required this.newsImage,
    required this.newsTitLe,
    required this.newsDescription,
    required this.newsUrL,
  });
  factory MyNewsModeL.fromJson(json) {
    return MyNewsModeL(
      newsImage: json["urlToImage"],
      newsTitLe: json["title"],
      newsDescription: json["description"],
      newsUrL: json["url"],
    );
  }
}
