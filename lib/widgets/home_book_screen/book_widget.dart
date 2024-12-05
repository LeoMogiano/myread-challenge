import 'package:flutter/material.dart';
import 'package:my_reads/models/models.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    super.key,
    required this.book,
  });

  final Book book;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Hero(
            tag: book.id ?? 'XYZ',
            child: Image.network(
              width: size.width * 0.35,
              height: size.height * 0.24,
              book.imageLinks?.thumbnail ?? 'https://via.placeholder.com/150',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: size.width * 0.35, // Limita el ancho del contenedor
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book.title ?? 'No Title',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                book.authors?.first ?? 'No Autor',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}