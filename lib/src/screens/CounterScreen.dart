import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../main.dart';
import '../blocs/counter/CounterEvent.dart';
import '../views/Counterview.dart';

/// {@template counter_page}
/// A [StatelessWidget] that:
/// * provides a [CounterBloc] to the [CounterView].
/// {@endtemplate}
class CounterPage extends StatelessWidget {
  /// {@macro counter_page}
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const CounterView(),
    );
  }
}
