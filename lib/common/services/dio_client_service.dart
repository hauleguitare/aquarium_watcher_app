import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

class DioClientService {
  final Dio dio;
  final Logger logger;
  DioClientService({required this.dio, required this.logger}){
    dio.interceptors.add(
      InterceptorsWrapper(
        onResponse: onResponse,
        onError: onError,
        onRequest: onRequest
      )
    );
  }

  factory DioClientService.configClient({required BaseOptions dioConfigs}){
    final Dio dio = Dio();
    return DioClientService(logger: Logger("DioClientService"), dio: Dio(dioConfigs));
  }


  onRequest(RequestOptions option, RequestInterceptorHandler handler) {}
  onError(DioError error, ErrorInterceptorHandler handler){}
  onResponse(Response<dynamic> resp, ResponseInterceptorHandler handler){}


  dispose(){
    dio.close();
  }

  clearInterceptor(){
    dio.interceptors.clear();
  }
}