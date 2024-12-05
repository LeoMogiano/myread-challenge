import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'package:my_reads/bloc/custom_blocs.dart';
import 'package:my_reads/core/core.dart';
import 'package:my_reads/repositories/repositories.dart';

class BlocsProvider extends StatelessWidget {
  const BlocsProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BooksBloc(bookRepository: BookRepository())),
      ],
      child: const MainApp(),
    );
  }
}