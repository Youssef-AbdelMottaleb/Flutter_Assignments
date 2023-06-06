import 'package:flutter/material.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: Text(
                "New Password ",
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
              )),
          const SizedBox(
            height: 30,
          ),
          const Text("Please enter your email to receive a \n link to create a new password via email "),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 700,
            child: TextFormField(
              controller: TextEditingController(),
              style: const TextStyle(
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  hintText: "Password",
                  hintStyle: const TextStyle(color: Colors.grey)),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 700,
            child: TextFormField(
              controller: TextEditingController(),
              style: const TextStyle(
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  hintText: "Confirm Password",
                  hintStyle: const TextStyle(color: Colors.grey)),
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          Container(
              width: 500,
              height: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.deepOrangeAccent),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Next",
                    style: TextStyle(color: Colors.white),
                  )))
        ],
      ),
    );
  }
}
