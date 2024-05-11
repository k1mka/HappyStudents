import 'package:happy_students/core/data/models/Author.dart';
import 'package:happy_students/core/data/models/Client.dart';
import 'package:happy_students/core/data/repositories/repository.dart';

import '../services/network_service.dart';

class RepositoryImpl implements Repository {
  final NetworkService networkService;

  RepositoryImpl(this.networkService);

  @override
  Future<List<Author>> fetchAuthors() async {
    // TODO: implement fetchAuthors
    final listAuthors = await networkService.fetchAuthors();
    print(listAuthors);
    return <Author>[];
  }

  @override
  Future<List<Client>> fetchClients() {
    // TODO: implement fetchClients
    throw UnimplementedError();
  }


}