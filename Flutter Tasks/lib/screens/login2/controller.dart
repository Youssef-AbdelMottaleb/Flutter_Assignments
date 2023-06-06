import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test1/core/cache_helper.dart';

import '../login2/model.dart';

class Login2Controller {
  final emailController = TextEditingController(text: CacheHelper.getEmail());
  final passwordController = TextEditingController(text: CacheHelper.getPhone());

  Future<UserData> login() async {
    final response = await Dio().post("https://transfer-me.wanderguide.net/api/users/login", data: {
      "email": emailController.text,
      "password": passwordController.text,
      "type": "student"
    }).then((value) => value);

    print(response.data.toString());
    final model = UserData.fromJson(response.data);
    return model;
  }


}