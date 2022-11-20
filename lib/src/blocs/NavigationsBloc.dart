import 'package:flutter_bloc/flutter_bloc.dart';

import '../constant/nav_bar_items.dart';
import 'Navigation_state.dart';

/// Event being processed by [CounterBloc].
abstract class NavigationEvent {}

/// create all event
class HomeScreenPressed extends NavigationEvent {}

class SearchScreenPressed extends NavigationEvent {}

class CleatePostScreenPressed extends NavigationEvent {}

class NotificationScreenPressed extends NavigationEvent {}

class ProfileScreenPressed extends NavigationEvent {}

class SettingsScreenPressed extends NavigationEvent {}

/// navigationBloc
class NavigationBloc extends Bloc<NavigationEvent, NavigationModel> {
  NavigationBloc() : super(NavigationModel(NavbarItem.home, 0)) {
    on<HomeScreenPressed>(
        (event, emit) => {emit(NavigationModel(NavbarItem.home, 0))});
    on<SearchScreenPressed>(
        (event, emit) => {emit(NavigationModel(NavbarItem.searching, 1))});
    on<NotificationScreenPressed>(
        (event, emit) => {emit(NavigationModel(NavbarItem.notification, 2))});
    on<ProfileScreenPressed>(
        (event, emit) => {emit(NavigationModel(NavbarItem.profile, 3))});
  }
}
