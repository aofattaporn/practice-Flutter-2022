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
class NavigationBloc extends Bloc<NavigationEvent, NavigationModel> {
  NavigationBloc() : super(NavigationModel(NavbarItem.home, 0)) {
    on<HomeScreenPressed>(
        (event, emit) => {emit(NavigationModel(NavbarItem.home, 0))});

    on<SettingsScreenPressed>(
        (event, emit) => {emit(NavigationModel(NavbarItem.settings, 1))});
    on<ProfileScreenPressed>(
        (event, emit) => {emit(NavigationModel(NavbarItem.profile, 2))});
  }
}
