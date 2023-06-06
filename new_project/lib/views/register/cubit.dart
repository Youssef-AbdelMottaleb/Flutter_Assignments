import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/dio_helper.dart';
import '../../core/helper_methods.dart';

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
        myImage = File(value.path);

        emit(RegisterChangeImageState());
      }
    });
  }

  void register() async {
    if (formKey.currentState!.validate()) {
      // send request
      if (myImage != null) {
        emit(RegisterLoadingState());
        try{
          final response = await dioHelper.sendData(endPoint: "initial/users/register");
          dioHelper
              .sendData(
              endPoint: "intial/users/register",
              data: FormData.fromMap({
                "email": emailController.text,
                "password": passwordController.text,
                "phone": phoneController.text,
                "image": MultipartFile.fromFileSync(myImage!.path),
                "name": nameController.text,
              }));
          print(response.statusCode);
          print(response.data);
          print(response.requestOptions.data);
          print(response.requestOptions.path);
        }
        catch (ex){
          print(ex.toString());
        }


            //.then((value) {
          //print(value.data.toString());
          //emit(RegisterSuccessState("Done"));
        //}).catchError((error) {
          //emit(RegisterFailedState(error.toString()));
        //});
      } else {
        showMessage(message: "Please Select Image First");
      }
    }
  }
}
