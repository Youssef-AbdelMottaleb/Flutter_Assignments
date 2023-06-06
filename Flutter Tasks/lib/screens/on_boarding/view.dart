import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
            children: [
            const SizedBox(height: 30),
        Image.asset(
          "assets/images/black-cartoon-monkey-face-red.png",
          width: 200,
          height: 300,
          fit: BoxFit.fill,
        ),
        const SizedBox(height: 80),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            CircleAvatar(radius: 10, backgroundColor: Colors.black),
            SizedBox(width: 5),
            CircleAvatar(radius: 10, backgroundColor: Colors.blue),
            SizedBox(width: 5),
            CircleAvatar(radius: 10, backgroundColor: Colors.green),
            SizedBox(width: 5),
          ],
        ),
        const SizedBox(height: 30),
        const Text("Find Food you Love",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
        const SizedBox(height: 30),
        const Text("Fast Food fast food again discover food you like it \n from over 1000 restaurants"),
        const SizedBox(height: 30),
        Container(height: 60,
          width: 360,
          decoration: BoxDecoration(
              color: Colors.deepOrangeAccent, borderRadius: BorderRadius.circular(50)),
          child: const Center(child: Text("Next",style: TextStyle(color: Colors.white),))
          )],
        )
        ,
      )
      ,
    );
  }
}
