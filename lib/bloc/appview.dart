import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_documentation/animation/align_animation.dart';
import 'package:flutter_documentation/bloc/counter_page.dart';
class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData> (
        builder: (_, theme){
          return MaterialApp(
            theme: theme,
            home: const CounterPage1(),
          );
        });
  }
}

class CounterPage1 extends StatelessWidget {
  const CounterPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => CounterBloc(),
    child: const CounterView(),);
  }
}
class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter**'),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, count) {
            return Text(
              '$count',
              style: Theme.of(context).textTheme.displayLarge,
            );
          },
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              context.read<CounterBloc>().add(CounterIncrementPressed());
            },
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              context.read<CounterBloc>().add(CounterDecrementPressed());
            },
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.brightness_6),
            onPressed: () {
              context.read<ThemeCubit>().toggleTheme();
            },
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const AlignAnimationScreen()));
            },
          ),
        ],
      ),
    );
  }
}

abstract class CounterEvent{}
class CounterIncrementPressed extends CounterEvent{}
class CounterDecrementPressed extends CounterEvent{}
class CounterBloc extends Bloc<CounterEvent, int>{
  CounterBloc(): super(0){
    on <CounterIncrementPressed> ((event, emit) => emit(state +1));
    on <CounterDecrementPressed>((event, emit) => emit(state -1));
  }

}

class ThemeCubit extends Cubit<ThemeData>{
  ThemeCubit(): super(_lightTheme);
  static final _lightTheme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white
    ),
    brightness: Brightness.light

  );
  static final _darkTheme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.black,
    ),
    brightness: Brightness.dark
  );

  void toggleTheme(){
    emit(state.brightness == Brightness.dark? _lightTheme: _darkTheme);


  }
}


