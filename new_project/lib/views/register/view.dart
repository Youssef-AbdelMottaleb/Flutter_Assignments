import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_project/views/login/view.dart';

import '../../core/helper_methods.dart';
import '../../core/input_validator.dart';
import '../../shared_widgets/input.dart';
import 'cubit.dart';


class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
                backgroundColor: Colors.blue,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                builder: (context) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: cubit.chooseMyImage,

                      child: Container(
                        margin: EdgeInsets.only(top: 20.h),
                        height: 100.h,
                        width: 100.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.withOpacity(0.5)),
                        child: BlocBuilder<RegisterCubit, RegisterStates>(
                            builder: (context, state) {
                              return Stack(
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
                              );
                            }),
                      ),
                    ),
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
                        child: Container(
                          margin: EdgeInsets.only(top: 20.h),
                          height: 100.h,
                          width: 100.h,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.withOpacity(0.5)),
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
                          validator: nameValidator
                      ),
                      Input(
                          label: "Enter Your Phone",
                          controller: cubit.phoneController,
                          keyboardType: TextInputType.phone,
                          validator: phoneValidator
                      ),
                      Input(
                          label: "Enter Your Email",
                          controller: cubit.emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: emailValidator
                      ),
                      Input(
                          label: "Enter Your Password",
                          controller: cubit.passwordController,
                          isPassword: true,
                          validator: passwordValidator
                      ),
                      Input(
                          label: "Enter Your Password Again",
                          controller: cubit.confirmPasswordroller,
                          isLastInput: true,
                          isPassword: true,
                          validator: confirmPasswordValidator
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: BlocConsumer<RegisterCubit, RegisterStates>(

                          listener: (context,state){
                            if(state is RegisterFailedState){
                              showMessage(message: state.message);

                            }
                            if(state is RegisterSuccessState){
                              showMessage(message: state.message);
                              navigateTo(page: const LoginView());
                            }
                          },
                          builder: (context,state) {
                            if(state is RegisterLoadingState){
                              return const CircularProgressIndicator();
                            }
                            return ElevatedButton(
                                onPressed: () {cubit.register();}, child: const Text("Register"));
                          }
                        ),
                      ),
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
