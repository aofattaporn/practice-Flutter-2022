import 'package:flutter/material.dart';

import 'RevTest/PlayOneShotAnimetion.dart';

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
      home: Scaffold(appBar: AppBar(), body: const PlayOneShotAnimation()),
    );
  }
}
