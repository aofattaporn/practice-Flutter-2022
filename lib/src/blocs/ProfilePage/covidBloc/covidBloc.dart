import 'package:equatable/equatable.dart';

import '../../../data/repository/ApiRepository.dart';
import 'covidEvent.dart';
import 'covidState.dart';
import 'package:bloc/bloc.dart';



class CovidBloc extends Bloc<CovidEvent, CovidState> {
  CovidBloc() : super(CovidInitial()) {

    /// dependency injection
    final ApiRepository _apiRepository = ApiRepository();

    on<GetCovidList>((event, emit) async {
      try {
        emit(CovidLoading());
        final mList = await _apiRepository.fetchCovidList();
        emit(CovidLoaded(mList));
        if (mList.error != null) {
          emit(CovidError(mList.error));
        }
      } on NetworkError {
        emit(CovidError("Failed to fetch data. is your device online?"));
      }
    });
  }
}
