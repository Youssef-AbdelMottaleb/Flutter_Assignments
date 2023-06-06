import 'package:flutter/material.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            const Text(
              "Hello Youssef ",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Welcome to the Ranmi ",
                style: TextStyle(color: Colors.white, fontSize: 16)),
            const SizedBox(
              height: 30,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/media/FU4N77XWAAI8AOg.jpg"),
            ),
            const SizedBox(
              height: 25,
            ),
            TextButton(
                onPressed: () {},
                child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white),
                    child: const Center(
                      child: Text(
                        "Change Profile Picture ",
                        style: TextStyle(color: Colors.yellowAccent),
                      ),
                    ),
                ),
            ),
            const SizedBox(height: 80,),
            TextButton(
              onPressed: () {},
              child: Container(
                height: 80,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: const Center(
                  child: Text(
                    "Upload Picture ",
                    style: TextStyle(color: Colors.yellowAccent),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30,),
            const Text("Skip ",style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
