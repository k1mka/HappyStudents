import 'package:flutter/material.dart';
import 'package:happy_students/core/presentation/main_screen/main_layout.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../get_it.dart';
import '../../business_logic/authors_page_block.dart';
import '../../data/repositories/repository.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthorsListBloc>(
      create: (_) => AuthorsListBloc(getIt<Repository>()),
      child: const MainLayout(),
    );
  }
}
