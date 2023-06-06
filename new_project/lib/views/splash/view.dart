import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/cache_helper.dart';
import '../../core/helper_methods.dart';
import '../login/view.dart';
import '../product/view.dart';
import '../register/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        navigateTo(
            page: CacheHelper.getIfFirstTime()
                ? const LoginView()
                : CacheHelper.getToken().isEmpty
                    ? const RegisterView()
                    : const ProductView(),
            withHistory: true);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  "https://static.vecteezy.com/system/resources/previews/002/520/838/non_2x/apple-logo-black-isolated-on-transparent-background-free-vector.jpg"),
              //fit: BoxFit.fill,
            )),
            width: double.infinity,
          ),
          const SizedBox(
            height: 13.9,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Apple",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 4,
              ),
              Text("Store",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Text("Everything you want is here".toUpperCase(),
              style: const TextStyle(
                  color: Colors.grey, fontSize: 10, letterSpacing: 2.36)),
        ],
      ),
    );
  }
}
