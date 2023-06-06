import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:test1/screens/profile2/controller.dart';
import 'package:test1/screens/profile2/item_bottom_bar.dart';


class ProfileScreen2 extends StatefulWidget {
   const ProfileScreen2({Key? key}) : super(key: key);

  @override
  State<ProfileScreen2> createState() => _ProfileScreen2State();
}

class _ProfileScreen2State extends State<ProfileScreen2> {
  final controller = Profile2Controller();
  File ?selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Text("Profile",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      )),
                ),
              )
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Column(
                children: [
                  InkWell(
                    onTap: () async {
                      final result = await FilePicker.platform.pickFiles(type: FileType.image);
                      if(result!= null){
                        setState(() {


                          selectedImage = File(result.files.single.path!);
                        });

                      }
                      else{
                        // user canceled

                      }

                    },
                    child:  CircleAvatar(
                      radius: 45,
                      // foregroundImage: selectedImage!=null?FileImage(selectedImage!):FileImage(File(""))
                      backgroundImage: selectedImage?.path == null ? const AssetImage("") : AssetImage(selectedImage!.path),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.deepOrangeAccent,

                          )),
                      const Text(
                        "  Edit Profile",
                        style: TextStyle(color: Colors.deepOrangeAccent),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text("Hi There Youssef ",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Sign Out  ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 700,
                    child: TextFormField(
                      controller: TextEditingController(),
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                      decoration: InputDecoration(
                          fillColor: Colors.black12,
                          filled: true,
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
                          fillColor: Colors.black12,
                          filled: true,
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
                          fillColor: Colors.black12,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          hintText: "New Email",
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
                          fillColor: Colors.black12,
                          filled: true,
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
                          fillColor: Colors.black12,
                          filled: true,
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
                          fillColor: Colors.black12,
                          filled: true,
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
                            "Save",
                            style: TextStyle(color: Colors.white),
                          ))),
                  const SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ),
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.selectedItem = 4;
          setState(() {

          });
        },
        backgroundColor: controller.selectedItem==4?Colors.orange:Colors.grey,
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomAppBar(
            color: Colors.white,
            shape: const CircularNotchedRectangle(),
            notchMargin: 15,
            child: Row(
              children:
              List.generate(
                  controller.titles.length,
                      (index) => ItemBottomBar(
                      isSelected: index == controller.selectedItem,
                      onPress: (){
                        controller.selectedItem= index;
                        setState(() {

                        });
                      },

                      name: controller.titles[index],
                      icon: controller.icons[index])),
            )),
      ),
    );
  }
}
