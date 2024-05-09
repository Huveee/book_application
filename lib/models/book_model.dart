import 'dart:convert';

BookModel bookModelFromMap(String str) => BookModel.fromMap(json.decode(str));

String bookModelToMap(BookModel data) => json.encode(data.toMap());

class BookModel {
  int? id;
  String? title;
  String? author;
  String? genre;
  String? description;
  String? isbn;
  String? image;
  DateTime? published;
  String? publisher;

  BookModel({
    required this.id,
    required this.title,
    required this.author,
    required this.genre,
    required this.description,
    required this.isbn,
    required this.image,
    required this.published,
    required this.publisher,
  });

  factory BookModel.fromMap(Map<String, dynamic> json) => BookModel(
        //Turning the json objects to the bookModel Object
        id: json["id"],
        title: json["title"],
        author: json["author"],
        genre: json["genre"],
        description: json["description"],
        isbn: json["isbn"],
        image: json["image"],
        published: DateTime.parse(json["published"]),
        publisher: json["publisher"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "author": author,
        "genre": genre,
        "description": description,
        "isbn": isbn,
        "image": image,
        "published":
            "${published?.year.toString().padLeft(4, '0')}-${published?.month.toString().padLeft(2, '0')}-${published?.day.toString().padLeft(2, '0')}",
        "publisher": publisher,
      };
}
