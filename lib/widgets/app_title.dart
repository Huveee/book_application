import 'package:book_application/constants/ui_helper.dart';
import 'package:flutter/material.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}


class _AppTitleState extends State<AppTitle> {

  String bookImageUrl='images/books.jpeg';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleHeight(),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              bookImageUrl,
              width:UIHelper.getImageWidth(),
              fit: BoxFit.cover,
              ),
          )
          ],
      ),
    );
  }
}