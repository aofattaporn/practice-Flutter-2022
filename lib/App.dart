import 'package:flutter/cupertino.dart';
import 'package:test_flutter/src/views/homescreen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// คลุมทั้งหมดโดยการใช้ blocProvider เพื่อส่ง bloc
    return RootScreen();
  }
}
