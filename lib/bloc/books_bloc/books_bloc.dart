import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_reads/models/book.dart';
import 'package:my_reads/repositories/book_repository.dart';

part 'books_event.dart';
part 'books_state.dart';

class BooksBloc extends Bloc<BooksEvent, BooksState> {

  final BookRepository bookRepository;

  BooksBloc({required this.bookRepository}) : super( const BooksInitial()) {
    on<FetchBooks>(_onFetchBooks);
    on<FetchBookById>(_onFetchBookById);
    on<SearchBooks>(_onSearchBooks);
    add(FetchBooks());
  }

  Future<void> _onFetchBooks(FetchBooks event, Emitter<BooksState> emit) async {
    emit(const BooksLoading());
    try {
      final books = await bookRepository.getBooks();
      emit(BooksLoaded(books));
    } catch (e) {
      emit(BooksError(e.toString()));
    }
  }

  Future<void> _onFetchBookById(FetchBookById event, Emitter<BooksState> emit) async {
    final saveBooks = (state as BooksLoaded).books;
    emit(const BooksLoading());
    try {
      final book = await bookRepository.getBookById(event.id);
      
      emit(BooksLoaded( saveBooks, book));
    } catch (e) {
      emit(BooksError(e.toString()));
    }
  }

  Future<void> _onSearchBooks(SearchBooks event, Emitter<BooksState> emit) async {
    emit(const BooksLoading());
    try {
      final books = await bookRepository.searchBooks(event.query);
      emit(BooksLoaded(books));
    } catch (e) {
      emit(BooksError(e.toString()));
    }
  }

}
