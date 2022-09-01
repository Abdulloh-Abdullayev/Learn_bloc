import 'package:flutter/foundation.dart';

abstract class DataState {
  const DataState();
}

class ApiInitial extends DataState {
  ApiInitial();
}

class DataLoading extends DataState {
  DataLoading();
}

class DataComplate extends DataState {
  final List<String> response;
  DataComplate(this.response);

// @override
// bool operator == (Object o){
//   if(identical(this o)) return true;
//
//   return o is DataComplate && listEquals(o.response, response);
// }
//
// @override
// int get hashCode => response.hashCode;

}

class DataError extends DataState {
  final String errorMessage;
  const DataError(this.errorMessage);
}
