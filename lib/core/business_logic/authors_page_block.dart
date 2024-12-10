import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repositories/repository.dart';
import 'cubit_states/authors_page_event.dart';
import 'cubit_states/authors_page_state.dart';

class AuthorsListBloc extends Bloc<LoadingMainPageEvent, MainPageState> {
  Repository repo;
  AuthorsListBloc(this.repo) : super(InitialState()) {
    on<LoadingMainPageEvent>((event, emit) async {
      emit(LoadingAuthors());
      try {
        final authors = await repo.fetchAuthors();
        emit(LoadedAuthors(authors));
      } catch (e) {
        emit(ErrorAuthors(e));
      }
    });
  }
}