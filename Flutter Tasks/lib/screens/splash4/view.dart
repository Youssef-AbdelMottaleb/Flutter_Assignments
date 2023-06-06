import 'package:flame_splash_screen/flame_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen4s extends StatelessWidget {
  const SplashScreen4s({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenGame(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen4 extends StatelessWidget {
  const SplashScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Come again'),
          onPressed: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute(builder: (context) => SplashScreenGame()),
            );
          },
        ),
      ),
    );
  }
}

class SplashScreenGame extends StatefulWidget {
  @override
  _SplashScreenGameState createState() => _SplashScreenGameState();
}

class _SplashScreenGameState extends State<SplashScreenGame> {
  late FlameSplashController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlameSplashScreen(
        showBefore: (BuildContext context) {
          return const Text('Before logo');
        },
        showAfter: (BuildContext context) {
          return const Text('After logo');
        },
        theme: FlameSplashTheme.dark,
        onFinish: (context) => Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute(builder: (context) => const SplashScreen4()),
        ),
      ),
    );
  }
}