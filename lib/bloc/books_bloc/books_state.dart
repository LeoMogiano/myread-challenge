part of 'books_bloc.dart';

sealed class BooksState extends Equatable {
  const BooksState();

  @override
  List<Object?> get props => [];
}

class BooksInitial extends BooksState {
  const BooksInitial();
}

class BooksLoading extends BooksState {
  const BooksLoading();
}

class BooksLoaded extends BooksState {
  final List<Book> books;
  final Book? selectedBook; 

  const BooksLoaded(this.books, [this.selectedBook]);

  @override
  List<Object?> get props => [books, selectedBook];
}

class BooksError extends BooksState {
  final String message;

  const BooksError(this.message);

  @override
  List<Object?> get props => [message];
}