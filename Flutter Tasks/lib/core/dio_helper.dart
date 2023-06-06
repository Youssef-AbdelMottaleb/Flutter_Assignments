import 'package:dio/dio.dart';

class DioHelper
{
  final dio = Dio(BaseOptions(baseUrl: "http://store.webautobazaar.com/api/"));

  void getData({required String endPoint}){

    dio.get(endPoint);
  }

  void sendData({required String endPoint,FormData? data}){

    dio.post(endPoint,data: data).then((value) {
      print(value);
    });

  }
}