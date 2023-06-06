import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void navigateTo({required Widget page, bool withHistory = true}) {
  /*
  FadeTransition
  ScaleTransition
  RotationTransition
   */

  Navigator.pushAndRemoveUntil(
      navigatorKey.currentContext!,
      PageRouteBuilder(
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            child,
        pageBuilder: (context, animation, secondaryAnimation) => page,
      ),
      (route) => withHistory);
}

void showMessage({required String message}) {
  ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(SnackBar(
      elevation: 0,
      backgroundColor: Colors.green.withOpacity(0.5),
      content: Row(
        children: [
          const Icon(Icons.message, color: Colors.white),
          SizedBox(width: 5.w),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                message,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      )));
}
