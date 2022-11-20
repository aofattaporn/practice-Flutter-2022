import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/src/blocs/ProfilePage/covidBloc/covidBloc.dart';
import 'package:test_flutter/src/blocs/ProfilePage/covidBloc/covidState.dart';
import 'package:test_flutter/src/screens/CovidPage.dart';

import '../data/model/CovidModel.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CovidPage();
  }

}
