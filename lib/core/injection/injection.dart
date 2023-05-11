import 'package:aquarium_watcher_app/common/dataSource/data_source_impl.dart';
import 'package:aquarium_watcher_app/core/abstractions/dataSource/data_source.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class InjectorProvider {
  static final GetIt _getItInstance = GetIt.I;

  static setup(){
    // -------- DATA SOURCE -------- //
    _getItInstance.registerLazySingletonAsync<DataSource>(() async => ApiDataSourceImpl.configClient(dioConfigs: BaseOptions(
      baseUrl: ''
    )));
  }
}