import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/src/screens/ProfileScreen.dart';
import 'package:test_flutter/src/screens/SettingScreen.dart';

import '../blocs/NavigationsBloc.dart';
import '../constant/nav_bar_items.dart';
import '../models/Navigation_state.dart';
import '../screens/HomeScreen.dart';

class BottomNaviation extends StatefulWidget {
  const BottomNaviation({Key? key}) : super(key: key);

  @override
  _BottomNaviationState createState() => _BottomNaviationState();
}

class _BottomNaviationState extends State<BottomNaviation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        /// manage app bar
        appBar: AppBar(),

        /// manage bottomNavigationBar
        bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationModel>(
          builder: (context, state) {
            return BottomNavigationBar(
              currentIndex: state.index,
              showUnselectedLabels: false,
              items: [
                NavigationItem(const Icon(Icons.home), "home"),
                NavigationItem(const Icon(Icons.search), "search"),
                NavigationItem(const Icon(Icons.notifications), "Notification"),
                NavigationItem(const Icon(Icons.person), "Profile"),
              ],
              selectedItemColor: Colors.lightBlue[100],
              onTap: (index) {
                if (index == 0) {
                  context.read<NavigationBloc>().add(HomeScreenPressed());
                } else if (index == 1) {
                  context.read<NavigationBloc>().add(SearchScreenPressed());
                } else if (index == 2) {
                  context
                      .read<NavigationBloc>()
                      .add(NotificationScreenPressed());
                } else if (index == 3) {
                  context.read<NavigationBloc>().add(ProfileScreenPressed());
                }
              },
            );
          },
        ),

        /// manage body
        body: BlocBuilder<NavigationBloc, NavigationModel>(
            builder: (context, state) {
          if (state.navbarItem == NavbarItem.home) {
            return const HomeScrreen();
          } else if (state.navbarItem == NavbarItem.settings) {
            return const SettingScreen();
          } else if (state.navbarItem == NavbarItem.profile) {
            return const ProfileScreen();
          }
          return Container();
        }),
      ),
    );
  }

  BottomNavigationBarItem NavigationItem(Icon icon, String title) {
    return BottomNavigationBarItem(
      icon: icon,
      label: title,
    );
  }
}
