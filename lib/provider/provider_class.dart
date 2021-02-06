import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:api_calling_with_provider/model/book_model.dart';

class ProviderClass extends ChangeNotifier {
  List<Book> books = [];

  Future<bool> getdata() async {
    final response = await http
        .get('https://cryptic-anchorage-73816.herokuapp.com/getAllBooks');
    if (response.statusCode == 200) {
      List list = json.decode(response.body);
      books = List<Book>.from(list.map((x) => Book.fromJson(x)));
      print("Books" + books.toString());
      notifyListeners();
      return true;
    }
    return false;
  }
}
