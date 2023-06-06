import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
              child: Text(
            "We have sent an OTP to your mobile ",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          )),
          const SizedBox(
            height: 30,
          ),
          const Text(
              "Please check your mobile number 071*****12 \n continue to reset your password "),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 60,
                child: TextFormField(
                  controller: TextEditingController(),
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintStyle: const TextStyle(color: Colors.grey)),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  controller: TextEditingController(),
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintStyle: const TextStyle(color: Colors.grey)),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  controller: TextEditingController(),
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintStyle: const TextStyle(color: Colors.grey)),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  controller: TextEditingController(),
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintStyle: const TextStyle(color: Colors.grey)),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              width: 600,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.deepOrangeAccent),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Send",
                    style: TextStyle(color: Colors.white),
                  ))),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Didn't Receive ? "),
              TextButton(
                  onPressed: () {},
                  child: const Text("Click here ",
                      style: TextStyle(color: Colors.deepOrangeAccent))),
            ],
          )
        ],
      ),
    );
  }
}
