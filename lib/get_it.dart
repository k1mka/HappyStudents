import 'package:get_it/get_it.dart';

import 'core/data/repositories/repository.dart';
import 'core/data/repositories/repository_imp.dart';
import 'core/data/services/network_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  NetworkService service = NetworkServiceImpl();
  getIt.registerSingleton<NetworkService>(service);
  getIt.registerSingleton<Repository>(RepositoryImpl(service));
}
