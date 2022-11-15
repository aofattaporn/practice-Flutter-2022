import 'package:flutter/material.dart';
import 'package:test_flutter/src/ui/ArticleListScreen.dart';

bool shouldUseFirestoreEmulator = false;

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // home: NomalBars(),
      home: const ArticleListScreen()
    );
  }
}
