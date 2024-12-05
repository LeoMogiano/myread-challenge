import 'package:flutter/material.dart';
import 'package:my_reads/models/models.dart';

class BookDetailWidget extends StatelessWidget {
  const BookDetailWidget({
    super.key,
    required this.book,
  });

  final Book book;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Text(
          book.title ?? 'No Title',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          book.authors?.first ?? 'No Autor',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 10),
        Hero(
          tag: book.id ?? 'XYZ',
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
            child: Image.network(
              book.imageLinks?.thumbnail ?? 'https://via.placeholder.com/150',
              width: size.width * 0.5,
              height: size.height * 0.3,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // descripcioón
        const SizedBox(height: 25),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            book.description ?? 'No description',
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}