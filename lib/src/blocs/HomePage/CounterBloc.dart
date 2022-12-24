import 'package:flutter_bloc/flutter_bloc.dart';

/// Event being processed by [CounterBloc].
abstract class CounterEvent {}

/// Event being processed by CounterEvent
class CounterIncrementPressed extends CounterEvent {}

class CounterDecrementPressed extends CounterEvent {}

class CounterResetPressed extends CounterEvent {}

/// navigationBloc
class CounterBloc extends Bloc<CounterEvent, int> {
  // constructor
  CounterBloc() : super(0) {
    /// event 1
    on<CounterIncrementPressed>((event, emit) => emit(state + 1));

    /// event 2
    /// business logic
    on<CounterDecrementPressed>((event, emit) => {
          if (state <= 0) {
            emit(state)
          }
          else {
            emit(state - 1)
          }
        });

    /// event 3
    on<CounterResetPressed>((event, emit) => emit(0));
  }
}
