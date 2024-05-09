import 'package:book_application/constants/constants.dart';
import 'package:book_application/constants/ui_helper.dart';
import 'package:book_application/models/book_model.dart';
import 'package:book_application/pages/detail_page.dart';
import 'package:book_application/services/shared_preferences.dart';
import 'package:book_application/widgets/book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookListItem extends StatelessWidget {
  final BookModel book;

  const BookListItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //When they are clicked
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPage(book: book),
        ));
      },
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
        shadowColor: Colors.white,
        color: Colors.red.shade200,
        child: Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title!,
                  style: Constants.getBookModelTextStyle(20),
                ),
                Chip(
                  label: Text(book.genre!),
                ),
                Row(
                  // Use Row to place Image and Checkbox side by side
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SharedPref(book: book),
                      ),
                    ),
                    Expanded(
                      child: BookImage(
                        book: book,
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
