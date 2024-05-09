import 'package:book_application/constants/constants.dart';
import 'package:book_application/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class BookDetails extends StatelessWidget {
  final BookModel book;
  int size;

  BookDetails({super.key, required this.book, required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  book.title ?? ' ',
                  style: Constants.getBookModelTextStyle(size),
                ),
              ),
              Text(
                book.id.toString(),
                style: Constants.getBookModelTextStyle(size),
              ),
            ],
          ),
          SizedBox(
            //To make space between row and chip
            height: 0.03.sh,
          ),
          Chip(
              label: Text(
            book.genre!,
            style: Constants.getTypeChipTextStyle(size),
          )),
        ],
      ),
    );
  }
}
