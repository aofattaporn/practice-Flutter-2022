import 'package:flutter_bloc/flutter_bloc.dart';

import '../constant/nav_bar_items.dart';
import '../models/Navigation_state.dart';

/// Event being processed by [CounterBloc].
abstract class NavigationEvent {}

/// create all event
class HomeScreenPressed extends NavigationEvent {}

class SettingsScreenPressed extends NavigationEvent {}

class ProfileScreenPressed extends NavigationEvent {}

/// navigationBloc
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationState(NavbarItem.home, 0)) {
    on<HomeScreenPressed>(
        (event, emit) => {emit(NavigationState(NavbarItem.home, 0))});

    on<SettingsScreenPressed>(
        (event, emit) => {emit(NavigationState(NavbarItem.settings, 1))});
    on<ProfileScreenPressed>(
        (event, emit) => {emit(NavigationState(NavbarItem.profile, 2))});
  }
}
