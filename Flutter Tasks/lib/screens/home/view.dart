import 'package:flutter/material.dart';
import 'package:test1/core/cache_helper.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(title: const Text("Home Screen"),backgroundColor: Colors.cyan,),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "category"),
          BottomNavigationBarItem(icon: Icon(Icons.image),label: "image"),
          BottomNavigationBarItem(icon: Icon(Icons.link),label: "link"),
        ],
      ),
      // anonymous function
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.teal,onPressed: (){},child: const Icon(Icons.add)),

      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Image.network(CacheHelper.getImage(),height: 100,),
            Text(CacheHelper.getName()),
            Text(CacheHelper.getFullName()),
            Text(CacheHelper.getEmail()),
            Text(CacheHelper.getPhone()),
            Text(CacheHelper.getStatus()),
          ],
        ),
      ),
    );
  }
}

