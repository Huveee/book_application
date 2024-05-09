import 'package:book_application/models/book_model.dart';
import 'package:dio/dio.dart';

class RemoteApi {

   static Future <List <BookModel> > getBookList() async{

    try{

      String bookUrl='https://fakerapi.it/api/v1/books?_quantity=100';

       var response=await Dio().get(bookUrl);

       List <BookModel> bookList=[];

       if(response.statusCode==200){

        bookList = (response.data['data'] as List).map((e) => BookModel.fromMap(e)).toList();

       }
        return bookList;

    }on DioException catch (e) {

      return Future.error(e.message.toString());

    }

  }

}