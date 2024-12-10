import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happy_students/core/business_logic/cubit_states/authors_page_event.dart';
import 'package:happy_students/core/business_logic/cubit_states/authors_page_state.dart';
import 'package:happy_students/core/presentation/widgets/author_card.dart';

import '../../business_logic/authors_page_block.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  void initState() {
    super.initState();
    context.read<AuthorsListBloc>().add(LoadingMainPageEvent());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            AuthorCard(
              imageNetwork:
              'https://i.pinimg.com/474x/fc/89/93/fc899301e75a4c190bfdffd5d89157b7.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
