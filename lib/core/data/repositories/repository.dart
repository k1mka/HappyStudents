import 'package:happy_students/core/data/models/Author.dart';
import 'package:happy_students/core/data/models/Client.dart';

abstract class Repository {
  Future<List<Author>> fetchAuthors();
  Future<List<Client>> fetchClients();
}