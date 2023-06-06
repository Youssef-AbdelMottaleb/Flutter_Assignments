import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/views/product/cubit.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(),
      child: Builder(builder: (context) {
        final cubit = ProductCubit.get(context);
        cubit.getProducts();
        return Scaffold(
          appBar: AppBar(title: const Text("Products")),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<ProductCubit, ProductStates>(
                    builder: (context, state) {
                  if (state is GetProductLoadingState) {
                    return const CircularProgressIndicator();
                  } else if (state is GetProductFailedState) {
                    return Text(state.message);
                  } else {
                    return Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                          children: [
                              Row(
                                children: [
                                  const Text("Title"),
                                  SizedBox(width: 20.w,),
                                  Text(cubit.model!.data.records[index].title)
                                ],
                              ),
                              SizedBox(height: 20.h,),
                              Row(
                                children: [
                                  const Text("Price"),
                                  SizedBox(width: 20.w,),
                                  Text(cubit.model!.data.records[index].price)
                                ],
                              ),
                          ],
                        ),
                            )),
                        itemCount: cubit.model!.data.records.length,
                      ),
                    );
                    //return Text(cubit.model!.data.records.length.toString());
                  }
                }),
              ],
            ),
          ),
        );
      }),
    );
  }
}
