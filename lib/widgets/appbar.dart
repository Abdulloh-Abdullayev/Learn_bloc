import 'package:flutter/material.dart';
import 'package:learn_bloc/core/constants/colors_const.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: ColorConst.deepPurple,
    centerTitle: true,
    title: Text("Bloc",style: TextStyle(fontSize: 25),),
    elevation: 0,
  );
}

