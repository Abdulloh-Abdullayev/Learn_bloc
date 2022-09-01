import 'package:flutter/material.dart';
import 'package:learn_bloc/core/constants/colors_const.dart';
import 'package:learn_bloc/core/constants/navigation_const.dart';
import 'package:learn_bloc/core/extensions/size_extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: SizedBox(
                child: Text("Daily currency reports",style: TextStyle(fontSize: 30,),),
              ),
            ),

            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              onPressed: (){
                Navigator.pushNamed(context, NavigationConst.CURRENCY_PAGE);
              },
              child: Icon(Icons.currency_exchange_outlined,color: Colors.white,),
              color: ColorConst.deepPurple,
              height: context.h*0.08,
              minWidth: context.w*0.250,
            ),

            SizedBox(height: context.h*0.05,),

            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
              ),
              onPressed: (){
                Navigator.pushNamed(context, NavigationConst.DATA_PAGE);
              },
              child: Icon(Icons.data_object,color: Colors.white,),
              color: ColorConst.deepPurple,
              height: context.h*0.08,
              minWidth: context.w*0.250,
            ),
          ],
        ),
      ),
    );
  }
}