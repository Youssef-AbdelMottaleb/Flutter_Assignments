import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: Text(
            "Sign Up ",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          )),
          const SizedBox(
            height: 30,
          ),
          const Text("add your details to login "),
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
                  hintText: "Name",
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
                  hintText: "Email",
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
                  hintText: "Mobile Number",
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
                  hintText: "Address",
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
            width: 600,
              height: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.deepOrangeAccent),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  )))
        ],
      ),
    );
  }
}
