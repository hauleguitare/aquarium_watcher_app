import 'package:aquarium_watcher_app/core/abstractions/dataSource/data_source.dart';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

class ApiDataSourceImpl extends DataSource{
  final Logger logger;
  final Dio dio;
  ApiDataSourceImpl({required this.logger, required this.dio});

  factory ApiDataSourceImpl.configClient({required BaseOptions dioConfigs}){
    return ApiDataSourceImpl(logger: Logger("ApiDataSource"), dio: Dio(dioConfigs));
  }
}