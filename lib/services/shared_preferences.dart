import 'package:book_application/models/book_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SharedPref extends StatelessWidget {
  final BookModel book;
  final _chosenBooks = [];

  SharedPref({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildCheckBoxListTiles(book);
  }

  Widget _buildCheckBoxListTiles(BookModel book) {
    return CheckboxListTile(
      checkboxShape: const StarBorder(
        innerRadiusRatio: 0.5,
        rotation: 20,
      ),
      value: _chosenBooks.contains(book.title!),
      onChanged: (bool? value) {
        if (value == false) {
          _chosenBooks.remove(book.title!);
        } else {
          _chosenBooks.add(book.title!);
        }
        debugPrint(_chosenBooks.toString());
      },
    );
  }
}
