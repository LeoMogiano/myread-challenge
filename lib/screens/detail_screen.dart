import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_reads/bloc/custom_blocs.dart';
import 'package:my_reads/widgets/widgets.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Book',
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 20, 10, 30),
        child: SingleChildScrollView(
          child: Column(
            children: [

              BlocBuilder<BooksBloc, BooksState>(
                builder: (context, state) {

                  if (state is BooksLoading) {

                    return Container(
                      alignment: Alignment.center,
                      margin:  EdgeInsets.only(top: size.height / 3),
                      child: const CircularProgressIndicator(),
                    );

                  } else if (state is BooksLoaded) {

                    return BookDetailWidget(
                      book: state.selectedBook!,
                    );

                  } else { // state is BooksError

                    return Container(
                      margin:  EdgeInsets.only(top: size.height / 3),
                      alignment: Alignment.center,
                      child: Text(
                        (state as BooksError).message,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                        ),
                      ),
                    );

                  } 

                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
