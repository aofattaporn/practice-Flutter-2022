import '../constant/nav_bar_items.dart';

class NavigationModel {
  final NavbarItem navbarItem;
  final int index;

  NavigationModel(this.navbarItem, this.index);

  @override
  List<Object> get props => [this.navbarItem, this.index];
}
