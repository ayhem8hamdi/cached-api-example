import 'package:caching/core/services/api_service.dart';
import 'package:caching/feature/home/data/data_sources/local/home_local_data_source_impl.dart';
import 'package:caching/feature/home/data/data_sources/remote/home_remote_data_source_impl.dart';
import 'package:caching/feature/home/data/repos/product_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));
  getIt.registerLazySingleton<HomeLocalDataSourceImpl>(
      () => HomeLocalDataSourceImpl());
  getIt.registerLazySingleton<HomeRemoteDataSourceImpl>(
    () => HomeRemoteDataSourceImpl(getIt<ApiService>()),
  );
  getIt.registerLazySingleton<ProductRepoImpl>(
    () => ProductRepoImpl(
      getIt<HomeRemoteDataSourceImpl>(),
      getIt<HomeLocalDataSourceImpl>(),
    ),
  );
}
