import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buttons")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
              height: 50,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            const SizedBox(
              height: 50,
            ),
            TextButton(onPressed: () {}, child: const Text("Click ")),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {},
              hoverColor: Colors.greenAccent.withOpacity(0.2),
              splashColor: Colors.greenAccent.withOpacity(0.2),
              highlightColor: Colors.orangeAccent.withOpacity(0.2),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.ac_unit,
                    color: Colors.cyanAccent,
                  ),
                  Text(
                    "Click ",
                    style: TextStyle(color: Colors.cyanAccent),
                  ),
                  Icon(
                    Icons.ac_unit,
                    color: Colors.cyanAccent,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.ac_unit,
                    color: Colors.cyanAccent,
                  ),
                  Text(
                    "Click ",
                    style: TextStyle(color: Colors.cyanAccent),
                  ),
                  Icon(
                    Icons.ac_unit,
                    color: Colors.cyanAccent,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                elevation: 30,
                fixedSize: const Size(160, 100),
                shadowColor: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                side: const BorderSide(color: Colors.black),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.add),
                  Text("Click Me "),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              style:
                  ElevatedButton.styleFrom(primary: Colors.red, elevation: 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.add),
                  Text("Click Me "),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.cyanAccent,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    Text("Click Me ", style: TextStyle(color: Colors.white)),
                    Icon(Icons.add, color: Colors.white),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.email),
                label: const Text("Click ")),
            const SizedBox(
              height: 50,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add_business),
                label: const Text("Text Button Icon ")),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.heart_broken),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Click "),
                  ],
                )),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.heart_broken),
                label: const Text("Click ")),
            const SizedBox(
              height: 50,
            ),
            MaterialButton(
                onPressed: (){},
                height: 60,
                minWidth: 120,
                color: Colors.red,
                child: const Text("click "),

            ),
            const SizedBox(
              height: 50,
            ),
            const ButtonBar(
              mainAxisSize: MainAxisSize.min,
              buttonHeight: 60,
              buttonMinWidth: 120,
              alignment: MainAxisAlignment.start,
              buttonAlignedDropdown: true,
              layoutBehavior: ButtonBarLayoutBehavior.padded,
              buttonPadding: EdgeInsets.all(10),
              overflowButtonSpacing: 10,
              children: [
                Text("Hello"),
                Text("Hello"),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            FloatingActionButton(onPressed: (){}),
            const CloseButton(color: Colors.red,),
            IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
            const BackButton(color: Colors.red,),
            IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back)),
          ],
        ),
      ),
    );
  }
}
