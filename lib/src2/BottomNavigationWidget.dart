import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/src2/constant/Constant_Color.dart';
import 'package:test_flutter/src2/screens/Home_page.dart';
import 'package:test_flutter/src2/screens/Notification_page.dart';
import 'package:test_flutter/src2/screens/Profile_page.dart';
import 'package:test_flutter/src2/screens/Search_page.dart';
import 'package:test_flutter/src2/screens/TestApi_page.dart';

import 'blocs/counter/counter_event.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  // late final TestRepository _testerRepository;
  int currentTab = 0;
  final List<Widget> screens = const [
    Home_page(),
    TestApi_page(),
    Notification_page(),
    Profile_page(),
    Search_page(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home_page();

  @override
  Widget build(BuildContext context) {
    /// injection covidBloc

    return Scaffold(
      /// body
      body: Center(
        child: MultiBlocProvider(
          providers: [BlocProvider(create: (_) => CounterBloc2())],
          child: PageStorage(
            bucket: bucket,
            child: currentScreen,
          ),
        ),
      ),

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
                  Button_Page(0, const Icon(Icons.home)),
                  Button_Page(1, const Icon(Icons.search)),
                ],
              ),
              Row(
                children: [
                  Button_Page(2, const Icon(Icons.notifications)),
                  Button_Page(3, const Icon(Icons.person)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  MaterialButton Button_Page(int indexSceeen, Widget xicon) {
    return MaterialButton(
        onPressed: () {
          setState(() {
            currentScreen = screens[indexSceeen];
            currentTab = indexSceeen;
          });
        },
        child: xicon);
  }
}
