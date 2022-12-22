import 'package:flutter/cupertino.dart';

import '../../src/screens/CovidPage.dart';

class Profile_page extends StatelessWidget {
  const Profile_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CovidPage()
      ),
    );
  }
}
