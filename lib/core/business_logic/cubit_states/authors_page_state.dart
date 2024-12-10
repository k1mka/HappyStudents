import 'package:happy_students/core/data/models/Author.dart';

abstract class MainPageState {}

class InitialState extends MainPageState {}

class LoadingAuthors extends MainPageState {}

class LoadedAuthors extends MainPageState {
  final List<Author> authorList;

  LoadedAuthors(this.authorList);
}

class ErrorAuthors extends MainPageState {
  final Object exception;

  ErrorAuthors(this.exception);
}
