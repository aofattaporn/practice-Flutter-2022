import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/src/blocs/HomePage/CounterBloc.dart';
import 'package:test_flutter/src/blocs/NavigationsBloc.dart';
import 'package:test_flutter/src/ui/homescreen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// คลุมทั้งหมดโดยการใช้ blocProvider เพื่อส่ง bloc
    return MultiBlocProvider(providers: [
      BlocProvider<CounterBloc>(
        create: (BuildContext context) => CounterBloc(),
      ),
      BlocProvider<NavigationBloc>(
          create: (BuildContext context) => NavigationBloc())
    ], child: const BottomNaviation());
  }
}
