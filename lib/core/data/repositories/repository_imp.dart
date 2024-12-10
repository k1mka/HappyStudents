import 'package:happy_students/core/data/models/Author.dart';
import 'package:happy_students/core/data/models/Client.dart';
import 'package:happy_students/core/data/repositories/repository.dart';

import '../services/network_service.dart';

class RepositoryImpl implements Repository {
  final NetworkService networkService;

  RepositoryImpl(this.networkService);

  @override
  Future<List<Author>> fetchAuthors() async {
    final listAuthors = await networkService.fetchAuthors();
    return mapDynamicListToAuthorList(listAuthors);
  }

  @override
  Future<List<Client>> fetchClients() async {
    final listClients = await networkService.fetchClients();
    return mapDynamicListToClientList(listClients);
  }


}