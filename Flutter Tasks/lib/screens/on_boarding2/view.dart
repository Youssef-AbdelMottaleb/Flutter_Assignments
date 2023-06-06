/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:test1/core/cache_helper.dart';
import 'package:test1/screens/login/view.dart';

import '../login2/view.dart';
import 'controller.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (value) {
          controller.currentPage = value;
          setState(() {});
        },
        children: List.generate(
            controller.models.length,
            (index) => SingleChildScrollView(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 111,
                        ),
                        Image.asset(
                          controller.models[controller.currentPage].image!,
                          height: 294.81,
                          width: 225,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                              controller.models.length,
                              (index) => Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        end: 5),
                                    child: CircleAvatar(
                                      radius: 3,
                                      backgroundColor: Color(
                                          index == controller.currentPage
                                              ? 0xffFC6011
                                              : 0xffD6D6D6),
                                    ),
                                  )),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          controller.models[controller.currentPage].title!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 28,
                              color: Color(0xff4A4B4D),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 33,
                        ),
                        Text(
                          controller.models[controller.currentPage].subTitle!,
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 13, color: Color(0xff7C7D7E)),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (controller.currentPage <
                                (controller.models.length - 1)) {
                              print(controller.currentPage < 2);
                              print("current" +
                                  controller.currentPage.toString());
                              print("Length" +
                                  controller.models.length.toString());
                              controller.currentPage++;
                              setState(() {});
                            }

                            if(controller.currentPage ==
                                controller.models.length - 1)
                              {
                                CacheHelper.saveIfNotFirstTime();
                                navigateTo(page: LoginScreen2(),withHistory: false);
                              }
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xffFC6011),
                              fixedSize: Size(307, 56),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28))),
                          child: Text(
                            controller.currentPage ==
                                    controller.models.length - 1
                                ? "Finish"
                                : "Next",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 94,
                        ),
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}*/