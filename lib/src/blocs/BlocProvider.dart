import 'NavigationsBloc.dart';

class AllBlocProvider {
  /// injection all bloc for user
  late final NavigationBloc _navigationBloc = new NavigationBloc();

  NavigationBloc get navigationBloc => _navigationBloc;
}