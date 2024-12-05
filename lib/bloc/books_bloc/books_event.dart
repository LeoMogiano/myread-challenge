part of 'books_bloc.dart';

sealed class BooksEvent extends Equatable {
  const BooksEvent();

  @override
  List<Object?> get props => [];
}

class FetchBooks extends BooksEvent {}

class FetchBookById extends BooksEvent {
  final String id;

  const FetchBookById(this.id);

  @override
  List<Object?> get props => [id];
}

class SearchBooks extends BooksEvent {
  final String query;

  const SearchBooks(this.query);

  @override
  List<Object?> get props => [query];
}
