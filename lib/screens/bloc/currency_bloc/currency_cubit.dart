import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/screens/bloc/currency_bloc/currency_state.dart';

class CurrencyCubit extends Cubit<CurrencyState> {
  CurrencyCubit() : super(ApiInitial());

   int counter = 0;

  void plus(){
    counter+=1;
    emit(CounterState());
  }

  void minus(){
    counter-=1;
    emit(CounterState());
  }
}