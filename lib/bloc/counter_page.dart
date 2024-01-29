import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_documentation/bloc/counter_cubit.dart';
import 'package:flutter_documentation/screen/home_screen.dart';
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        centerTitle: true,
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) => Center(child: Text('$count'),),

      ),
      floatingActionButton:  Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget> [
          FloatingActionButton(
            heroTag: 'Increment Button',
            onPressed: ()=> context.read<CounterCubit>().increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8,),
          FloatingActionButton(
            heroTag: 'Decrement Button',
            onPressed: ()=> context.read <CounterCubit>().decrement(),
          child: const Icon(Icons.remove),),
          TextButton(
              onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen())) , child: const Text('Home'))
        ],
      ),
    );
  }
}
