import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/src/blocs/ProfilePage/covidBloc/covidBloc.dart';
import 'package:test_flutter/src/blocs/ProfilePage/covidBloc/covidState.dart';

import '../data/model/CovidModel.dart';

// import '../blocs/ProfilePage/jockBloc/jokeBloc.dart';
// import '../blocs/ProfilePage/jockBloc/joke_state.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CovidBloc, CovidState>(builder: (context, state) {
      if (state is CovidInitial) {
        return _buildLoading();
      } else if (state is CovidLoading) {
        return _buildLoading();
      } else if (state is CovidLoaded) {
        return _buildCard(context, state.covidModel);
      } else if (state is CovidError) {
        return Container();
      } else {
        return Container();
      }
    });
  }
}

Widget _buildCard(BuildContext context, CovidModel model) {
  return ListView.builder(
    itemBuilder: (context, index) {
      return Container(
        margin: EdgeInsets.all(8.0),
        child: Card(
          child: Container(
            margin: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text("Msg: ${model.message}"),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget _buildLoading() => Center(child: CircularProgressIndicator());
