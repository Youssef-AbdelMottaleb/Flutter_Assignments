import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test1/screens/animation/controller.dart';
import 'package:test1/screens/animation/model.dart';

class AnimationScreen extends StatelessWidget {
  AnimationScreen({Key? key}) : super(key: key);
  final controller = AnimationController1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animation")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getAPIData();
        },
      ),
      body: Center(
        child: FutureBuilder(
          builder: (context, snapshot) {
              var data = snapshot.data as ModelAnimation;
              // FCM Device
              //return Text("Connected \n ${snapshot.data}");
              return ListView.builder(
                itemBuilder: (context, index) => Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://image.tmdb.org/t/p/original${data.data[index].animeImg}")),
                      borderRadius: BorderRadius.circular(25)),
                  child: Container(
                    height: 30,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.black.withOpacity(0.3),borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Text(data.data[index].animeName,
                          style: const TextStyle(color: Colors.white, fontSize: 30)),
                    ),
                  ),
                ),
                itemCount: data.data.length,
              );

          },

          future: Dio().get("https://anime-facts-rest-api.herokuapp.com/api/v1.json"),
        ),
      ),
    );
  }
}
