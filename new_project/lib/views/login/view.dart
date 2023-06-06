

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/views/product/view.dart';

import '../../core/helper_methods.dart';
import '../../core/input_validator.dart';
import '../../shared_widgets/input.dart';
import '../login/cubit.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final controller = LoginCubit();
  bool isLoaded = false;

  @override
  Widget build(BuildContext context) {
    /*
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login View ",
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
            const CircularProgressIndicator()
          else
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterView()));
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
    */

    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Builder(
        builder: (context) {
          final cubit = LoginCubit.get(context);
          return Scaffold(
            appBar: AppBar(title: const Text("Products"),),
            body: SizedBox(
              width: double.infinity,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

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

                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: BlocConsumer<LoginCubit, LoginStates>(

                        listener: (context,state){
                          if(state is LoginFailedState){
                            showMessage(message: state.message);

                          }
                          if(state is LoginSuccessState){
                            showMessage(message: state.message);
                            navigateTo(page: const ProductView(),withHistory: false);
                          }
                        },
                        builder: (context,state) {
                          if(state is LoginLoadingState){
                            return const CircularProgressIndicator();
                          }
                          return ElevatedButton(
                              onPressed: () {cubit.login();}, child: const Text("Login"));
                        }
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
