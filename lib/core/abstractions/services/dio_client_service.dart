import 'package:dio/dio.dart';

abstract class DioClientService {
  void dispose();
  void clearInterceptor();
  Dio getClient();
}