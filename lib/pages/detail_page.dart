import 'package:book_application/constants/ui_helper.dart';
import 'package:book_application/models/book_model.dart';
import 'package:book_application/widgets/book_details.dart';
import 'package:book_application/widgets/book_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math';

class DetailPage extends StatelessWidget {
  final BookModel book;

  const DetailPage({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String bookImageUrl = 'images/books.jpeg';

    return ScreenUtil().orientation == Orientation.portrait
        ? _buildPortraitBody(
            context, bookImageUrl) //If it is on the portrait mode
        : _buildLandscapeBody(
            context, bookImageUrl); //If it is on the landscape mode
  }

  Scaffold _buildPortraitBody(BuildContext context, String boookImageUrl) {
    int randomNum = Random().nextInt(100);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getIconPadding(),
              child: IconButton(
                  iconSize:
                      15.w, //It performs operations according to the width
                  onPressed: () {
                    Navigator.of(context).pop(); //Turn back to the last page
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            ),
            BookDetails(
              book: book,
              size: 20,
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    top: 0.13.sh,
                    child: BookInfo(
                      book: book,
                      size: 20,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      //To add the circular shape to the corners of the image
                      borderRadius: BorderRadius.circular(7),
                      child: Hero(
                        //Animation
                        tag: book.id!,
                        child: Image.network(
                          'https://picsum.photos/$randomNum',
                          height: 0.15.sh,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Scaffold _buildLandscapeBody(BuildContext context, String boookImageUrl) {
    int randomNum = Random().nextInt(100);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getIconPadding(),
              child: IconButton(
                  iconSize: 13.w,
                  onPressed: () {
                    Navigator.of(context).pop(); //Turn back to the last page
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BookDetails(
                        book: book,
                        size: 16,
                      ),
                      Expanded(
                        child: ClipRRect(
                          //To add the circular shape to the corners of the image
                          borderRadius: BorderRadius.circular(10),
                          child: Hero(
                            //Animation
                            tag: book.id!,
                            child: Image.network(
                              'https://picsum.photos/$randomNum',
                              height: 0.20.sw,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 6,
                    child: Padding(
                      padding: UIHelper.getDefaultPadding(),
                      child: BookInfo(
                        book: book,
                        size: 9,
                      ),
                    )),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
