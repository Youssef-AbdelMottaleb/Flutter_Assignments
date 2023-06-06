import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test1/core/helper_methods.dart';

import '../../core/dio_helper.dart';

part 'states.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);
  final dioHelper = DioHelper();
  File? myImage;
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordroller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void chooseMyImage() {
    ImagePicker.platform.getImage(source: ImageSource.gallery).then((value) {
      if (value != null) {
        //myImage = File(value.path);

        emit(RegisterChangeImageState());
      }
    });
  }

  void register() {
    if (formKey.currentState!.validate()) {
      // send request
      if (myImage != null) {
        dioHelper.sendData(
            endPoint: "intial/users/register",
            data: FormData.fromMap({
              "email": emailController.text,
              "password": passwordController.text,
              "phone": phoneController.text,
              "image": MultipartFile.fromFileSync(myImage!.path),
              "name": nameController.text,
            }));
      } else {
        ScaffoldMessenger.of(navigatorKey.currentContext!)
            .showSnackBar(SnackBar(
                elevation: 0,
                backgroundColor: Colors.green.withOpacity(0.5),
                content: Row(
                  children: [
                    const Icon(Icons.message, color: Colors.white),
                    SizedBox(width: 5.w),
                    const Text("Please Select Image First"),
                  ],
                )));
      }
    }
  }
}
