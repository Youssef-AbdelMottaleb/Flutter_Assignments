import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/screens/counter/states.dart';

import '../../core/cache_helper.dart';

class CounterController extends Cubit<CounterStates>{
  int count = CacheHelper.getCounter();

  CounterController() : super(CounterInitialState());

  static CounterController getObject(context){

    return BlocProvider.of(context);
  }

  void increment(){
    count++;
    CacheHelper.saveCounter(count);
    emit(CounterPlusState());
  }
  void decrement(){
    count--;
    CacheHelper.saveCounter(count);
    emit(CounterMinusState());
  }
}