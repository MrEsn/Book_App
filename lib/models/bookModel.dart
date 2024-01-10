class Book {
  int id;
  String name;
  String writer;
  String url;
  String summary;
  String description;
  List category;
  int price;
  int like;

  Book(
      {required this.id,
      required this.name,
      required this.writer,
      required this.url,
      required this.summary,
      required this.description,
      required this.category,
      required this.price,
      required this.like});
}
