import 'package:flutter/material.dart';
import 'package:test_flutter/Layout/screen_layout.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // home: NomalBars(),
      home: Scaffold(
          appBar: AppBar(),
          body: MyScreenLayout(),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: "Test"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: "Test"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: "Test")
            ],
            selectedItemColor: Colors.amber,

          )),
    );
  }
}
