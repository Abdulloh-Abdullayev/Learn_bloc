import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/screens/bloc/currency_bloc/currency_cubit.dart';
import 'package:learn_bloc/screens/bloc/currency_bloc/currency_state.dart';
import 'package:learn_bloc/widgets/appbar.dart';

class CurrencyPage extends StatelessWidget {
  const CurrencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CurrencyCubit(),
      child: BlocConsumer<CurrencyCubit, CurrencyState>(
        listener: (context, state) {},
        builder: (context, state) {
          return buildScaffold(context);
        },
      ),
    );
  }
  }

  Widget buildScaffold(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
             // height: context.h*0.1,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(

                      child: ElevatedButton(
                        onPressed: context.read<CurrencyCubit>().plus,
                        child: Icon(Icons.add,color: Colors.white,),
                      ),
                    flex: 3,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(context.watch<CurrencyCubit>().counter.toString(),style: TextStyle(fontSize: 25),),
                  ),

                  Expanded(
                      flex: 3,
                      child: ElevatedButton(
                        onPressed: context.read<CurrencyCubit>().minus,
                        child: Icon(Icons.remove,color: Colors.white,),
                      )),
                ],
              ),
            ),
          ),
         Expanded(
           flex:9,
           child:  ListView.builder(
           physics: const BouncingScrollPhysics(),
           itemCount: 10,
           itemBuilder: (contex,index){
             return Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
               child: const Card(
                 elevation: 5,
                 child: const ListTile(
                   title: Text("nimadir"),
                   subtitle: Text("nimadir"),
                   leading: const Text("nimadir"),
                   trailing: Text("nimadir"),
                 ),
               ),
             );
           },
         ),)
        ],
      ),
  ),
    );
  }
