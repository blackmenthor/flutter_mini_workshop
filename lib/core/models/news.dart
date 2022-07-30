class News {

  News({
    required this.id,
    required this.title,
    required this.gist,
    required this.imagePath,
    required this.publishedDate,
  });

  final String id;
  final String title;
  final String gist;
  final String imagePath;
  final DateTime publishedDate;

}