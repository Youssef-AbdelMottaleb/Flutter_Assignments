import 'package:flutter/material.dart';
import 'package:test1/controller/calculator.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final controller = CalculatorController();
/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World ",
            style: TextStyle(color: Colors.greenAccent)),
        centerTitle: true,
      ),
      drawer: const Drawer(child: Text("youssef")),
      endDrawer: const Drawer(child: Text("joeeee")),
      floatingActionButton: FloatingActionButton(onPressed: () {}, mini: true),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.category), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.abc_sharp), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: ""),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,

        children: [
          const Text("hello youssef "),
          Image.network(
            "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80",
            fit: BoxFit.cover,
            height: 400,
            width: 400,
          ),
          const Text(" joker "),
          Image.network(
            "data:image/jpeg;base64,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",
            fit: BoxFit.cover,
            height: 400,
            width: 400,
          ),
          const Text(" avengers "),
          Image.network(
            "data:image/jpeg;base64,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",
            fit: BoxFit.cover,
            height: 600,
            width: 600,
          ),
        ],
      ),
    );
  }
}
*/
  @override
  State<CalculatorScreen> createState()=>_CalculatorScreenState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator Screen ",
            style: TextStyle(color: Colors.greenAccent)),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextFormField(
            controller: controller.num1Controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Number 1"
            ),
          ),
          const SizedBox(height: 20,),

          TextFormField(
            controller: controller.num2Controller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Number 2"
            ),
          ),
          const SizedBox(height: 20,),

          TextFormField(
            controller: controller.operationController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter The Operation"
            ),
          ),
          const SizedBox(height: 20,),

          ElevatedButton(onPressed: (){
            controller.calculator();
            setState((){});
          },child: const Text("Calculator"),),
          const SizedBox(height: 20,),
          Text(controller.printDetails())
        ],
      ),
    );
  }
}