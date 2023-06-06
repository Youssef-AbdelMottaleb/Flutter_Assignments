import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      drawer: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(25))),
          clipBehavior: Clip.antiAlias,
          child: Drawer(
              backgroundColor: Colors.teal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      const CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 10,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Icon(
                              size: 10,
                              color: Colors.black,
                              Icons.arrow_back_ios),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text("User Info ", style: TextStyle(fontSize: 17)),
                      const SizedBox(height: 30),
                      const Text("Edit Profile ",
                          style: TextStyle(fontSize: 17)),
                      const SizedBox(height: 30),
                      const Text("Notifications ",
                          style: TextStyle(fontSize: 17)),
                      const SizedBox(height: 30),
                      const Text("Settings ", style: TextStyle(fontSize: 17)),
                      const SizedBox(height: 30),
                      const Text("My Tips and Reviews ",
                          style: TextStyle(fontSize: 17)),
                      const SizedBox(height: 30),
                      const Text("Map ", style: TextStyle(fontSize: 17)),
                      const SizedBox(height: 30),
                      const Text("Helps Center ",
                          style: TextStyle(fontSize: 17)),
                      const SizedBox(height: 30),
                      const Text("Legal Info ", style: TextStyle(fontSize: 17)),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("LogOut ", style: TextStyle(fontSize: 17)),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 10,
                              child: Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Icon(
                                    size: 10,
                                    color: Colors.black,
                                    Icons.logout),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              )),
        ),
      ),
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: SizedBox(
          height: 753,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const Text(
                "Login ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Spacer(),
              const Text("add your details to design "),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
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
                            hintText: "User Name",
                            hintStyle: const TextStyle(color: Colors.grey)),
                      ),
                    ),
                    const SizedBox(height: 30,),
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
                  ],
                ),

                /* Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25, top: 16),
                    child: Text(
                      "User Name : ",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),
                ),*/
              ),
              const SizedBox(
                height: 30,
              ),

              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                      child: Text(
                    "Login ",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Forgot Your Password "),
              const SizedBox(
                height: 40,
              ),
              const Text("Or Login With "),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Center(
                        child: Icon(Icons.facebook),
                      ),
                      Center(
                          child: Text(
                        "  Login With Facebook ",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Center(
                        child: Icon(Icons.g_mobiledata),
                      ),
                      Center(
                          child: Text(
                        "  Login With Google ",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Don't have account "),
                  Text("Sign Up  ", style: TextStyle(color: Colors.yellow)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
