import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading:IconButton(icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),onPressed: (){},),
        title: const Text("Profile ",style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(icon: const Icon(Icons.edit,color: Colors.black,),onPressed: (){},),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR46AsKRrjeY6MT6GFkcxR0Gv-hqdJpOoJHWb4bEUA&s"),
              ),
              const SizedBox(height: 15,),
              const Text("El Zaa3aamaa "),
              const SizedBox(height: 5,),
              const Text("Adel Shakal  ",style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 50,),
              Row(
                children: const [
                  SizedBox(width: 20,),
                  Text("User Name :"),
                  Spacer(),
                  Text("Adel Shakal "),
                  SizedBox(width: 20,),
                ],
              ),
              const SizedBox(height: 20,),
              const Divider(thickness: 3,color: Colors.grey,),

              const SizedBox(height: 50,),
              Row(
                children: const [
                  SizedBox(width: 20,),
                  Text("Email :"),
                  Spacer(),
                  Text("AdelShakal@gmail.com "),
                  SizedBox(width: 20,),
                ],
              ),
              const SizedBox(height: 20,),
              const Divider(thickness: 3,color: Colors.grey,),

              const SizedBox(height: 50,),
              Row(
                children: const [
                  SizedBox(width: 20,),
                  Text("Phone :"),
                  Spacer(),
                  Text("01540540450 "),
                  SizedBox(width: 20,),
                ],
              ),
              const SizedBox(height: 20,),
              const Divider(thickness: 3,color: Colors.grey,),

              const SizedBox(height: 50,),
              Row(
                children: const [
                  SizedBox(width: 20,),
                  Text("Date of Birth :"),
                  Spacer(),
                  Text("6/4/1970 "),
                  SizedBox(width: 20,),
                ],
              ),
              const SizedBox(height: 20,),
              const Divider(thickness: 3,color: Colors.grey,),


              const SizedBox(height: 50,),
              Row(
                children: const [
                  SizedBox(width: 20,),
                  Text("Address:"),
                  Spacer(),
                  Text("5:40 Familiy "),
                  SizedBox(width: 20,),
                ],
              ),
              const SizedBox(height: 20,),
              const Divider(thickness: 3,color: Colors.grey,),

              const SizedBox(height: 50,),
              Row(
                children: const [
                  SizedBox(width: 20,),
                  Text("Account :"),
                  Spacer(),
                  Icon(Icons.airplanemode_active),
                  Text("Cold "),
                  SizedBox(width: 20,),
                ],
              ),
              const SizedBox(height: 20,),
              const Divider(thickness: 3,color: Colors.grey,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(

                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(child: Text("Click ",style: TextStyle(color: Colors.white),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
