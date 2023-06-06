import 'package:dio/dio.dart';

class DioHelper {
  final dio = Dio(BaseOptions(baseUrl: "http://store.webautobazaar.com/api/"));

  Future<Response> getData({required String endPoint}) {
    return dio.get(endPoint);
  }

  Future<Response> sendData({required String endPoint, FormData? data}) async{
    return dio.post(endPoint, data: data);
  }
}