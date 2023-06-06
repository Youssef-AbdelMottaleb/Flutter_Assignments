import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/dio_helper.dart';
import 'model.dart';

part 'states.dart';

class ProductCubit extends Cubit<ProductStates> {
  ProductCubit() : super(ProductInitialState());

  static ProductCubit get(context) => BlocProvider.of(context);
  final dioHelper = DioHelper();

  ProductsData? model;
  void getProducts() async{

    emit(GetProductLoadingState());
    final response = await dioHelper.getData(endPoint: "products");
    if(response.statusCode==200&& response.data["status"]){

      model = ProductsData.fromJson(response.data);
      emit(GetProductSuccessState(message: response.data["msg"]));

    }
    else{
      emit(GetProductFailedState(message: response.data["msg"]));

    }
  }
}

