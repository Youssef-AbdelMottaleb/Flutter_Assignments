import 'package:flutter/material.dart';

import 'package:flutter_overboard/flutter_overboard.dart';


class OnBoardingScreen4 extends StatefulWidget {
  const OnBoardingScreen4({Key? key,}) : super(key: key);


  @override
  _OnBoardingScreen4State createState() => _OnBoardingScreen4State();
}

class _OnBoardingScreen4State extends State<OnBoardingScreen4> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: OverBoard(
        allowScroll: true,
        pages: pages,
        showBullets: true,
        inactiveBulletColor: Colors.blue,
        // backgroundProvider: NetworkImage('https://picsum.photos/720/1280'),
        skipCallback: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Skip clicked"),
          ));
        },
        finishCallback: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Finish clicked"),
          ));
        },
      ),
    );
  }

  final pages = [
    PageModel(
        color: const Color(0xFF0097A7),
        imageAssetPath: 'assets/images/black-cartoon-monkey-face-red.png',
        title: 'Screen 1',
        body: 'Share your ideas with the team',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF536DFE),
        imageAssetPath: 'assets/images/black-cartoon-monkey-face-red.png',
        title: 'Screen 2',
        body: 'See the increase in productivity & output',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF9B90BC),
        imageAssetPath: 'assets/images/black-cartoon-monkey-face-red.png',
        title: 'Screen 3',
        body: 'Connect with the people from different places',
        doAnimateImage: true),
    PageModel.withChild(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: Image.asset('assets/images/black-cartoon-monkey-face-red.png', width: 300.0, height: 300.0),
        ),
        color: const Color(0xFF5886d6),
        doAnimateChild: true)
  ];
}