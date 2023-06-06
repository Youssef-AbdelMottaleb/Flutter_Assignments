
import 'package:flutter/material.dart';
import 'package:test1/core/cache_helper.dart';
import 'package:test1/screens/home/view.dart';
import 'package:test1/screens/login2/controller.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({Key? key}) : super(key: key);

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  final controller = Login2Controller();
  bool isLoaded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen ",
            style: TextStyle(color: Colors.greenAccent)),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextFormField(
            controller: controller.emailController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Enter your Email"),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: controller.passwordController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Enter your password"),
          ),
          const SizedBox(
            height: 20,
          ),

          if (isLoaded != true)
            const CircularProgressIndicator(),
            ElevatedButton(
              onPressed: () {
                isLoaded= true;
                setState(() {});
                controller.login().then((value) async {
                  if(value.status){
                    await CacheHelper.saveToken(value.data.user.rememberToken);
                    await CacheHelper.saveName(value.data.user.userName);
                    await CacheHelper.saveEmail(value.data.user.email);
                    await CacheHelper.saveFullName(value.data.user.fullName);
                    await CacheHelper.saveImage(value.data.user.image);
                    await CacheHelper.savePhone(value.data.user.phone);
                    await CacheHelper.saveStatus(value.data.user.status);
                    await CacheHelper.saveId(value.data.user.id);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  }else{
                    isLoaded=false;
                    setState(() {

                    });
                    print("Login Failed");
                  }
                });
               // if(value)
                 // MaterialApp();
                //else
                  //isLoaded=false;

              },

              child: const Text("Login"),
            ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
