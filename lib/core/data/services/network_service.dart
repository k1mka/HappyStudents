import 'dart:convert';

import 'package:http/http.dart';

abstract class NetworkService {
  Future<List<dynamic>> fetchAuthors();
  Future<List<dynamic>> fetchClients();
}

class NetworkServiceImpl implements NetworkService {
  static const _baseUrl = "https://b836-176-100-4-211.ngrok-free.app";
  static const _apiUrl = "$_baseUrl/api";

  static const _listAuthorsEndpointUrl = '$_apiUrl/authors';
  static const _listClientsEndpointUrl = '$_apiUrl/client';

  @override
  Future<List<dynamic>> fetchAuthors() async {
    final url = Uri.parse(_listAuthorsEndpointUrl);
    final response = await get(url);
    List<dynamic> responseMap = json.decode(response.body);
    return responseMap;
  }

  @override
  Future<List<dynamic>> fetchClients() async {
    final url = Uri.parse(_listClientsEndpointUrl);
    final response = await get(url);
    List<dynamic> responseMap = json.decode(response.body);
    return responseMap;
  }
}