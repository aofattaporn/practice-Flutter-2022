import 'package:equatable/equatable.dart';

import '../../../data/model/CovidModel.dart';

abstract class CovidState extends Equatable {
  const CovidState();

  @override
  List<Object?> get props => [];
}

class CovidInitial extends CovidState {}

class CovidLoading extends CovidState {
}

class CovidLoaded extends CovidState {
  final CovidModel covidModel;
  const CovidLoaded(this.covidModel);
}

class CovidError extends CovidState {
  final String? message;
  const CovidError(this.message);
}