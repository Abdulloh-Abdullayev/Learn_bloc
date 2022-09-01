import 'package:flutter/material.dart';
import 'package:learn_bloc/core/constants/navigation_const.dart';
import 'package:learn_bloc/screens/currency_page.dart';
import 'package:learn_bloc/screens/data_page.dart';
import 'package:learn_bloc/screens/home_page.dart';

class Routers {
  Route? onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case NavigationConst.HOME_PAGE:
        return MaterialPageRoute(builder: (context) => HomePage());
      case NavigationConst.CURRENCY_PAGE:
        return MaterialPageRoute(builder: (context) => CurrencyPage());
      case NavigationConst.DATA_PAGE:
        return MaterialPageRoute(builder: (context) => DataPage());

    }
  }


}