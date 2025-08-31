import 'package:caching/core/services/api_service.dart';
import 'package:caching/feature/home/data/data_sources/local/home_local_data_source.dart';
import 'package:caching/feature/home/data/data_sources/local/home_local_data_source_impl.dart';
import 'package:caching/feature/home/data/data_sources/remote/home_remote_data_source.dart';
import 'package:caching/feature/home/data/data_sources/remote/home_remote_data_source_impl.dart';
import 'package:caching/feature/home/data/repos/product_repo_impl.dart';
import 'package:caching/feature/home/domain/repos/product_repostry.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final getIt = GetIt.instance;

void setup() {
  // Core
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));

  // Data sources
  getIt.registerLazySingleton<HomeLocalDataSource>(
      () => HomeLocalDataSourceImpl());
  getIt.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(getIt<ApiService>()));

  // Repository
  getIt.registerLazySingleton<ProductRepostry>(() => ProductRepoImpl(
        getIt<HomeRemoteDataSource>(),
        getIt<HomeLocalDataSource>(),
      ));
}
