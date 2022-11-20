import 'package:flutter/cupertino.dart';

class SettingScreen2 extends StatelessWidget {
  const SettingScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Hello SettingScreen'),
    );
  }
}

/// ----------------------------------------------
///       stateful widgets
/// ----------------------------------------------


class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> with WidgetsBindingObserver{

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

