import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test1/core/input_validator.dart';
import 'package:test1/screens/register/cubit.dart';
import 'package:test1/shared_widgets/input.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Builder(builder: (context) {
        final cubit = RegisterCubit.get(context);
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.cyanAccent,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                builder: (context) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<RegisterCubit, RegisterStates>(
                        builder: (context, state) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Gallary"),
                          SizedBox(width: 5.w,),
                          IconButton(
                              onPressed: () {
                                ImagePicker.platform
                                    .getImage(source: ImageSource.gallery)
                                    .then((value) {
                                  if (value != null) {
                                    //cubit.myImage = File(value.path);
                                    setState(() {});
                                  }
                                });
                                //FilePicker.platform.pickFiles(type: FileType.image).then((value) {
                                //if(value!=null){
                                //myImage =File(value.files[0].path);
                                //setState((){});
                                //}+
                                //});
                              },
                              icon: Icon(Icons.browse_gallery)),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text("Camera"),
                          SizedBox(width: 5.w,),
                          IconButton(
                              onPressed: () {
                                ImagePicker.platform
                                    .getImage(source: ImageSource.camera)
                                    .then((value) {
                                  if (value != null) {
                                    //cubit.myImage = File(value.path);
                                    setState(() {});
                                  }
                                });
                                //FilePicker.platform.pickFiles(type: FileType.image).then((value) {
                                //if(value!=null){
                                //myImage =File(value.files[0].path);
                                //setState((){});
                                //}
                                //});
                              },
                              icon: Icon(Icons.camera_alt_outlined)),
                        ],
                      );
                    }),
                  ],
                ),
              );
              setState(() {});
            },
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                width: double.infinity,
                child: Form(
                  key: cubit.formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          ImagePicker.platform
                              .getImage(source: ImageSource.gallery)
                              .then((value) {
                            if (value != null) {
                              cubit.myImage = File(value.path);
                              setState(() {});
                            }
                          });
                          //FilePicker.platform.pickFiles(type: FileType.image).then((value) {
                          //if(value!=null){
                          //myImage =File(value.files[0].path);
                          //setState((){});
                          //}
                          //});
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 20.h),
                          height: 100.h,
                          width: 100.h,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green.withOpacity(0.5)),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              if (cubit.myImage != null)
                                Image.file(
                                  cubit.myImage!,
                                  fit: BoxFit.contain,
                                ),
                              Icon(
                                Icons.camera_alt_outlined,
                                color: cubit.myImage != null
                                    ? Colors.white
                                    : Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                      Input(
                          label: "Enter Your Name",
                          controller: cubit.nameController,
                          validator: nameValidator),
                      Input(
                          label: "Enter Your Phone",
                          controller: cubit.phoneController,
                          keyboardType: TextInputType.phone,
                          validator: phoneValidator),
                      Input(
                          label: "Enter Your Email",
                          controller: cubit.emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: emailValidator),
                      Input(
                          label: "Enter Your Password",
                          controller: cubit.passwordController,
                          isPassword: true,
                          validator: passwordValidator),
                      Input(
                          label: "Enter Your Password Again",
                          controller: cubit.confirmPasswordroller,
                          isLastInput: true,
                          isPassword: true,
                          validator: confirmPasswordValidator),
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: ElevatedButton(
                            onPressed: () {
                              cubit.register();
                            },
                            child: const Text("Register")),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
