import 'package:flutter/material.dart';

class SomeoneToTalkScreen extends StatelessWidget {
  const SomeoneToTalkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                      child: Text(
                    "Find",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  )),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                      width: 80,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(25)),
                      child: const Center(
                        child: Icon(Icons.chat_bubble_outlined,
                            color: Colors.white, size: 55),
                      )),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 140),
              child: Text("Someone ",
                  style: TextStyle(color: Colors.white, fontSize: 35)),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text("To Talk To ",
                  style: TextStyle(color: Colors.white, fontSize: 35)),
            ),
            const SizedBox(
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 180),
              child: Text(
                "Thousands of Companies Online. ",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 170),
              child: Text(
                "Anonymous Safe and Fun. ",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: Container(
                    height: 100,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.orange,
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.search, color: Colors.white),
                            Text(
                              "  Start Search ",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 50),

                          ],
                        )),
                  ),
                ),
                const SizedBox(width: 30,),
                Padding(
                  padding: const EdgeInsets.only(right: 300),
                  child: Container(
                    height: 100,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.filter_alt_sharp,
                                color: Colors.white),
                            Text(
                              "  Search Filters ",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
