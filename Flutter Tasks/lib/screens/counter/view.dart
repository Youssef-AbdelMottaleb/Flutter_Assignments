import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/screens/counter/controller.dart';
import 'package:test1/screens/counter/states.dart';


class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterController(),
      child: Builder(builder: (context) {
        final controller = CounterController.getObject(context);

        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      controller.increment();
                      //setState(() {});
                    },
                    child: const Icon(Icons.add),
                  ),
                  //Bloc Builder and Bloc Consumer
                             // Bloc              state
                  BlocBuilder<CounterController, CounterStates>(
                    builder: (context, state) => Text(
                        controller.count.toString(),
                        style: const TextStyle(fontSize: 35)),
                  ),

                  FloatingActionButton(
                    onPressed: () {
                      controller.decrement();
                      //setState(() {});
                    },
                    child: const Icon(Icons.remove),
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
