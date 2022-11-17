import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Event being processed by [CounterBloc].
abstract class CounterEvent {}

/// Event being processed by CounterEvent
class CounterIncrementPressed extends CounterEvent {}

class CounterDecrementPressed extends CounterEvent {}

class CounterResetPressed extends CounterEvent {}

/// navigationBloc
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) => emit(state + 1));

    /// business logic
    on<CounterDecrementPressed>((event, emit) => {
          if (state <= 0) {emit(state)} else {emit(state - 1)}
        });
    on<CounterResetPressed>((event, emit) => emit(0));
  }
}

/// navigationBloc
class ThemeCubit extends Cubit<ThemeData> {
  /// {@macro brightness_cubit}
  ThemeCubit() : super(_lightTheme);

  static final _lightTheme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
    ),
    brightness: Brightness.light,
  );

  static final _darkTheme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.black,
    ),
    brightness: Brightness.dark,
  );

  /// Toggles the current brightness between light and dark.
  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
  }
}
