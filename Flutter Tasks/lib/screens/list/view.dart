import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(),
            title: Text("youssef"),
            subtitle: Text("engineer"),
          ),
        ],
      ),
    );
  }
}
