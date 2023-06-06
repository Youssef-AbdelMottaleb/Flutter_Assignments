import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test1/core/cache_helper.dart';
import 'package:test1/screens/home/view.dart';
import 'package:test1/screens/login/view.dart';
import 'package:test1/screens/on_boarding/view.dart';

import '../../core/helper_methods.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        navigateTo(
            page: CacheHelper.getIfFirstTime()
                ? const OnBoardingScreen()
                : CacheHelper.getToken().isEmpty
                    ? const LoginScreen()
                    : HomeScreen(),
            withHistory: true);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/splash_bg.png"),
          //fit: BoxFit.fill,
        )),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/black-cartoon-monkey-face-red.png",
              height: 105.1,
              width: 103.11,
            ),
            const SizedBox(
              height: 13.9,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("Meal",
                    style: TextStyle(
                        color: Color(0xffFC6011),
                        fontSize: 34,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 4,
                ),
                Text("Monkey",
                    style: TextStyle(
                        color: Color(0xff4A4B4D),
                        fontSize: 34,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Text("food delivery".toUpperCase(),
                style: const TextStyle(
                    color: Color(0xff4A4B4D),
                    fontSize: 10,
                    letterSpacing: 2.36)),
          ],
        ),
      ),
    );
  }
}
