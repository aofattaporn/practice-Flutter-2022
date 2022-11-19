import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/src/blocs/ProfilePage/covidBloc/covidBloc.dart';
import 'package:test_flutter/src/blocs/ProfilePage/covidBloc/covidState.dart';

import '../data/model/CovidModel.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: BlocProvider(
        create: (_) => CovidBloc(),
        child: BlocListener<CovidBloc, CovidState>(
          listener: (context, state) {
            if (state is CovidError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message!),
                ),
              );
            }
          },
          child: BlocBuilder<CovidBloc, CovidState>(
            builder: (context, state) {
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
            },
          ),
        ),
      ),
    );
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

Widget _buildLoading() => Center(child: CircularProgressIndicator());}
