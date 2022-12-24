import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/src2/constant/Constant_Color.dart';
import 'package:test_flutter/src2/screens/Home_page.dart';
import 'package:test_flutter/src2/screens/Notification_page.dart';
import 'package:test_flutter/src2/screens/Profile_page.dart';
import 'package:test_flutter/src2/screens/Search_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../src/screens/CovidPage.dart';
import 'blocs/counter/counter_event.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  // child: BlocProvider(
  // create: (_) => CounterBloc2(),

  int currentTab = 0;
  final List<Widget> screens = [
    Home_page(),
    CovidPage(),
    Notification_page(),
    Profile_page(),
    Search_page(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Profile_page();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar

      /// body
      body: Center(
          child: BlocProvider(
        create: (_) => CounterBloc2(),
        child: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
      )),

      /// FAB
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, size: 40),
        backgroundColor: kThirtery,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      /// Bottom navigation Bar
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentScreen = screens[0];
                          currentTab = 0;
                        });
                      },
                      child: Icon(Icons.home, size: 24)),
                  MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentScreen = screens[1];
                          currentTab = 1;
                        });
                      },
                      child: Icon(Icons.search, size: 24))
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentScreen = Notification_page();
                          currentTab == 2 ? Colors.amber : Colors.black38;
                        });
                      },
                      child: Icon(Icons.notifications, size: 24)),
                  MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentScreen = Profile_page();
                          currentTab == 3 ? Colors.amber : Colors.black38;
                        });
                      },
                      child: Icon(Icons.person, size: 24))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
