import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class name extends StatefulWidget {
  name({Key? key}) : super(key: key);

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: NomalBars(),
    );
  }
}

class NomalBars extends StatelessWidget {
  const NomalBars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 81, 85, 126),
        shape: ShapeBorder.lerp(
            RoundedRectangleBorder(), RoundedRectangleBorder(), 1),
        bottomOpacity: 0,
        toolbarOpacity: 1,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical( bottom: Radius.circular(50))
              ),
    
              padding: const EdgeInsets.all(8.0),
              // color: Colors.blue[600],
              // alignment: Alignment.center,
              // child: Text('Hello World',
              //     style: Theme.of(context)
              //         .textTheme
              //         .headline4!
              //         .copyWith(color: Colors.white)),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
          )
        ],
      ),
    );
  }
}

class DefaultTavbController_TabBars extends StatelessWidget {
  const DefaultTavbController_TabBars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.cloud_outlined),
                ),
                Tab(
                  icon: Icon(Icons.beach_access_sharp),
                ),
                Tab(
                  icon: Icon(Icons.brightness_5_sharp),
                ),
              ],
              automaticIndicatorColorAdjustment: true,
            ),
          ),
          body: TabView()),
    );
  }
}

class TabView extends StatelessWidget {
  const TabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: <Widget>[
        Center(
          child: Page1(),
        ),
        Center(
          child: Text("It's sunny here"),
        ),
        Center(
          child: Text("It's sunny here"),
        ),
      ],
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



class ColumnBody extends StatelessWidget {
  const ColumnBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.transparent,
            height: 150.0,
          ),
        ),
        Container(
          // margin: const EdgeInsets.all(10.0),
          color: Color.fromARGB(255, 44, 44, 44),
          // width: 48.0,
          height: 48.0,
        ),
      ],
    );
  }
}
