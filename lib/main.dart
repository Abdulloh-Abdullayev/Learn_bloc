import 'package:flutter/material.dart';
import 'package:learn_bloc/core/constants/navigation_const.dart';
import 'package:learn_bloc/router/router.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: NavigationConst.HOME_PAGE,
      onGenerateRoute: Routers().onGenerateRoute,
    );
  }
}
