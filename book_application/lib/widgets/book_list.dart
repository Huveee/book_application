import 'package:book_application/widgets/book_list_item.dart';
import 'package:flutter/material.dart';
import 'package:book_application/models/book_model.dart';
import 'package:book_application/services/api.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookList extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  BookList({super.key});

  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  late Future<List<BookModel>> _bookListFuture;

  @override
  void initState() {
    //Works just one time (To get the data from internet once)(To not work for so many times in build method)
    super.initState();
    _bookListFuture = RemoteApi.getBookList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BookModel>>(
      future: _bookListFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var bookList = snapshot.data!;

          return GridView.builder(
            itemCount: bookList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
            itemBuilder: (context, index) =>
                BookListItem(book: bookList[index]),
          );
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
