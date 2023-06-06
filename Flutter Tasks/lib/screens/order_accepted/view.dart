import 'package:flutter/material.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const CircleAvatar(
              radius: 80,
              backgroundColor: Colors.red,
              child: Icon(Icons.thumb_up, color: Colors.white,size: 95),
            ),
            const SizedBox(height: 40,),
            const Text("Your Order ",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            const Text("Has Been Accepted ",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
            const SizedBox(height: 30,),
            const Text("Your Items Has Been Placed and is on "),
            const SizedBox(height: 10,),
            const Text("its way to being Processed "),
            const SizedBox(height: 60,),
            Container(
              clipBehavior: Clip.antiAlias,
              height: 60,
              width: 400,
              decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(25)),
              child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: const Text("TRACK ORDER ",style: TextStyle(color: Colors.white),)
              ),
            ),
            const SizedBox(height: 15,),
            TextButton(onPressed: (){}, child: const Text("BACK TO HOME ",style: TextStyle(color: Colors.red),))
          ],
        ),
      ),
    );
  }
}
