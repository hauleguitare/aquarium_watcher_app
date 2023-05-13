import 'package:aquarium_watcher_app/core/abstractions/services/dio_client_service.dart';
import 'package:aquarium_watcher_app/core/abstractions/services/share_preferences_service.dart';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

class DioClientServiceImpl implements DioClientService{
  final Dio dio;
  final Logger logger;
  final SharedPreferencesService preferService;

  DioClientServiceImpl({required this.dio, required this.logger, required this.preferService}){
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: _onRequest,
        onResponse: _onResponse,
        onError: _onError,
      )
    );
  }

  factory DioClientServiceImpl.configClient({required BaseOptions dioConfigs}){
    final Dio dio = Dio();
    return DioClientServiceImpl(logger: Logger("DioClientService"), dio: Dio(dioConfigs));
  }
    _onRequest(RequestOptions option, RequestInterceptorHandler handler) {}
    _onError(DioError error, ErrorInterceptorHandler handler){}
    _onResponse(Response<dynamic> resp, ResponseInterceptorHandler handler){}

  @override
  dispose(){
    dio.close();
  }

  @override
  clearInterceptor(){
    dio.interceptors.clear();
  }

  @override
  Dio getClient(){
    return dio;
  }
}