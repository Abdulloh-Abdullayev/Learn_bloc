import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/screens/bloc/data_bloc/data_cubit.dart';
import 'package:learn_bloc/screens/bloc/data_bloc/data_state.dart';
import 'package:learn_bloc/widgets/appbar.dart';

class DataPage extends StatelessWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DataCubit(),
        child: buildScaffold(context)

    );
  }

  Widget buildScaffold(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BlocConsumer<DataCubit, DataState>(
        listener: (context, state){
          if(state is DataError){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  backgroundColor: Colors.red,
                  content: Text("Error While Initializing..."))
            );
          } else if(state is DataComplate){
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    backgroundColor: Colors.green,
                    content: Text("Data Succssfully Loaded..."))
            );
          }
        },
        builder: (context, state){
          if(state is ApiInitial){
            return const Center(
              child: Text("Initial..."),
            );
          }else if(state is DataLoading){
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if(state is DataComplate){
            return ListView.builder(
              itemCount: state.response.length,
              itemBuilder: (context, index){
                return Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text(state.response[index]),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: Text((state as DataError).errorMessage.toString()),
            );
          }
        },
      ),
    );
  }
}
