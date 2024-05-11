import 'package:flutter/material.dart';
import 'package:happy_students/core/presentation/widgets/author_card.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

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
