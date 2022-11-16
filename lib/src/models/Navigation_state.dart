import '../constant/nav_bar_items.dart';

class NavigationState {
  final NavbarItem navbarItem;
  final int index;

  NavigationState(this.navbarItem, this.index);

  @override
  List<Object> get props => [this.navbarItem, this.index];
}
