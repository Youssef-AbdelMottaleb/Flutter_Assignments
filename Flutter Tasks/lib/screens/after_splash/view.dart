import 'package:flutter/material.dart';

class AfterSplashScreen extends StatelessWidget {
  const AfterSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
            Container(
            height: 499,
            color: Colors.white,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/after_splash_header.png",
                  //fit: BoxFit.fill,
                  height: 406,
                  width: double.infinity,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/images/black-cartoon-monkey-face-red.png",
                        height: 180.1,
                        width: 103.11,
                      ),
                      const SizedBox(
                        height: 5.9,
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
              ],
            ),
          ),
          const SizedBox(
            height: 44,
          ),
          const Text(
            "Discover The Best Foods From Over 1000\nResturants and Fast Delivery To Your doorstep ",
            style: TextStyle(fontSize: 13, color: Color(0xff7C707E)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 36,
          ),
          ElevatedButton(onPressed: () {},
            child: const Text("Login ", style:
                //ElevatedButton.styleFrom(
                  //fixedSize:  Size(307, 56)
                  //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28))

            //),
              TextStyle(color: Colors.white),)),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(onPressed: () {},
                child: const Text("Create an Account ",
                  style: TextStyle(color: Colors.orangeAccent),

                  //ElevatedButton.styleFrom(
                    //  fixedSize:  Size(307, 56)
                    //side: BorderSide(BorderSide(color: Color(0xffFC6011),width: 1))
                    //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28))
                    //  side: BorderSide(color: Color(0xffFC6011),width: 1)
                  //),
                )),
            const SizedBox(
              height: 43,
            ),
            ],
          ),
        ),
      ),
    );
  }
}
