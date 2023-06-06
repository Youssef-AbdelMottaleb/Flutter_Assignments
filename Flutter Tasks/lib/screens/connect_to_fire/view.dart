import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:test1/screens/connect_to_fire/controller.dart';
import 'package:test1/screens/connect_to_fire/model.dart';

class ConnectToFireBaseScreen extends StatelessWidget {
  ConnectToFireBaseScreen({Key? key}) : super(key: key);
  final controller = ConnectToFirebaseController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Movies")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getAPIData();
        },
      ),
      body: Center(
        child: FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data as MoviesData;
              FirebaseMessaging.instance.getToken().then((value) {
                print("FCM Token $value");
              });
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
                              "https://image.tmdb.org/t/p/original${data.results[index].backdropPath}")),
                      borderRadius: BorderRadius.circular(25)),
                  child: Container(
                    height: 30,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.black.withOpacity(0.3),borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Text(data.results[index].title,
                          style: const TextStyle(color: Colors.white, fontSize: 30)),
                    ),
                  ),
                ),
                itemCount: data.results.length,
              );
            } else {
              if (snapshot.hasError) {
                print(snapshot.hasData.toString());

                return const Text("Error");
              } else {
                return const CircularProgressIndicator();
              }
            }
          },
          future: Firebase.initializeApp(),
          //future: controller.getAPIData(),
          //future: Dio().get("https://test1-f17de-default-rtdb.firebaseio.com/.json"),
        ),
      ),
    );
  }
}
