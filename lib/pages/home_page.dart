import 'package:book_application/widgets/app_title.dart';
import 'package:book_application/widgets/book_list.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder:(context, orientation) => Column(
          children: [
            const AppTitle(),
            Expanded(child: BookList()),
          ],
        ),
      ),
    );
  }
}