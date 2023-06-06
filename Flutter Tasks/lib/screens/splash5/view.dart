import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:test1/screens/bottom_navigation_bar/view.dart';


class SplashScreen5 extends StatelessWidget {
  const SplashScreen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: "assets/images/black-cartoon-monkey-face-red.png",

            splashTransition: SplashTransition.rotationTransition,
            pageTransitionType: PageTransitionType.scale,
            nextScreen: BottomNavigationBarScreen(),

            backgroundColor: Colors.blue));
  }
}

