import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/src/screens/ProfileScreen.dart';
import 'package:test_flutter/src/screens/SettingScreen.dart';

import '../blocs/NavigationsBloc.dart';
import '../constant/nav_bar_items.dart';
import '../models/Navigation_state.dart';
import '../screens/HomeScreen.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          /// manage app bar
          appBar: AppBar(
            title: Text('Flutter Bottom Navbar Tutorial w/ Bloc'),
          ),

          /// manage bottomNavigationBar
          bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
            builder: (context, state) {
              return BottomNavigationBar(
                currentIndex: state.index,
                showUnselectedLabels: false,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                    ),
                    label: 'Settings',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                    ),
                    label: 'Profile',
                  ),
                ],
                selectedItemColor: Colors.lightBlue[100],
                onTap: (index) {
                  if (index == 0) {
                    context.read<NavigationBloc>().add(HomeScreenPressed());
                  } else if (index == 1) {
                    context.read<NavigationBloc>().add(SettingsScreenPressed());
                  } else if (index == 2) {
                    BlocProvider.of<NavigationBloc>(context);
                    context.read<NavigationBloc>().add(ProfileScreenPressed());
                  }
                },
              );
            },
          ),

          /// manage body
          body: Container(
            child: BlocBuilder<NavigationBloc, NavigationState>(
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
        ),
      ),
    );
  }
}
