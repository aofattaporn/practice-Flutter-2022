import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Layout/test_column.dart';

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
        body: column_picture(),
      ),
    );
  }
}
