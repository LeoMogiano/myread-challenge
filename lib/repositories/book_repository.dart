import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import 'package:my_reads/models/models.dart';

class BookRepository {

  final String baseURL = dotenv.env['BASE_URL']!;

  Future<List<Book>> getBooks() async {
    try {
      final String url = '$baseURL/books';
      final response = await http.get(
        Uri.parse(url),
        headers: {'Authorization': 'Bearer Test'},
      );

      if (response.statusCode != 200) throw Exception('Failed to load books');

      final List<Book> books = Book.fromJsonList(json.decode(response.body));
      return books;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Book> getBookById(String id) async {
    try {
      final String url = '$baseURL/books/$id';
      final response = await http.get(
        Uri.parse(url),
        headers: {'Authorization': 'Bearer Test'},
      );

      if (response.statusCode != 200) throw Exception('Failed to load book');
      
      final Book book = Book.fromJson(json.decode(response.body));
      return book;
    } catch (e) {
      throw Exception(e.toString());
    }  
  }

  Future<List<Book>> searchBooks(String query) async {
    try {
      final String url = '$baseURL/search';
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Authorization': 'Bearer Test',
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'query': query,
          'maxResults': 5,
        }),
      );

      if (response.statusCode != 200) throw Exception('Failed to load books');

      final List<Book> books = Book.fromJsonList(json.decode(response.body));
      return books;
    } catch (e) {
      throw Exception(e);
    }
  }
}
 