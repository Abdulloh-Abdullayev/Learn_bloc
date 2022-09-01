import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/screens/bloc/data_bloc/data_state.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(ApiInitial()){
    getData();
  }

  Future<void> getData()async{
    try{
      emit(DataLoading());
      await Future.delayed(const Duration(microseconds: 2));
      final res = await Future.value(["bir","ikki","uch","to'rt"]);
      emit(DataComplate(res));
    }catch(e){
      emit(const DataError("Ma'lumot kelmay qoldi !!!"));
    }
  }

}