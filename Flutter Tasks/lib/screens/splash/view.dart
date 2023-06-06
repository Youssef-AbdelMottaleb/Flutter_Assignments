import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQukwmKLesUEDHCpTF3P_poMkcbk-Ef4URV5A&usqp=CAU",
              width: 200,
              height: 300,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("Meal",style:TextStyle(color: Colors.orange,fontSize: 35)),
                Text("Monkey",style: TextStyle(fontSize: 35)),
              ],
            ),
            const SizedBox(height: 30),
            const Text("Fast Food"),
          ],
        ),
      ),
    );
  }
}
