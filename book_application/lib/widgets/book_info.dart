import 'package:book_application/constants/constants.dart';
import 'package:book_application/constants/ui_helper.dart';
import 'package:book_application/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class BookInfo extends StatelessWidget {
  final BookModel book;
  int size;
  BookInfo({super.key, required this.book, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.w)),
        color: Colors.white,
      ),
      child: Padding(
        padding: UIHelper.getIconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildRowInfo("title", book.title),
            _buildRowInfo("author", book.author),
            _buildRowInfo("genre", book.genre),
            _buildRowInfo("id", book.id),
            _buildRowInfo("description", book.description),
            _buildRowInfo("isbn", book.isbn),
            _buildRowInfo("published", book.published),
            _buildRowInfo("publisher", book.publisher),
          ],
        ),
      ),
    );
  }

  _buildRowInfo(dynamic label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            label.toString(),
            style: Constants.getBookInfoLabelTextStyle(size),
          ),
        ),
        Expanded(
          child: Text(
            value.toString(),
            style: Constants.getBookInfoTextStyle(size),
          ),
        ),
      ],
    );
  }
}
