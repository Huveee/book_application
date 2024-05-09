import 'dart:math';
import 'package:book_application/constants/ui_helper.dart';
import 'package:book_application/models/book_model.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  final BookModel book;

  const BookImage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    int randomNum = Random().nextInt(100);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Hero(
        //Animation
        tag: book.id!,
        child: Image.network(
          'https://picsum.photos/$randomNum',
          width: UIHelper.calculateImageSize(),
          height: UIHelper.calculateImageSize(),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
