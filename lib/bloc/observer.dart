import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_documentation/bloc/appview.dart';

class AppBlocObserver extends BlocObserver{
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change){
    super.onChange(bloc, change);
    if(bloc is Cubit) {
      print(change);
    }
  }
  @override
  void onTransition(
      Bloc<dynamic, dynamic> bloc,
      Transition<dynamic, dynamic> transition
      ){
    super.onTransition(bloc, transition);
    print(transition);
  }
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_)=> ThemeCubit(),
    child: const AppView(),);
  }
}

