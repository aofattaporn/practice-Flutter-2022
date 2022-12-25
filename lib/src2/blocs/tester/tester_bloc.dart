import 'package:bloc/bloc.dart';
import 'package:test_flutter/src2/blocs/tester/tester_event.dart';
import 'package:test_flutter/src2/blocs/tester/tester_state.dart';

import '../../data/respository/test_provider.dart';


class TesterBloc extends Bloc<TesterEvent, TesterState> {


  TesterBloc() : super(TesterLoadingState()) {

    final TestRepository testerRepository = TestRepository();

    on<LoadTesterEvent>((event, emit) async {

      emit(TesterLoadingState());
      try {
        final joke = await testerRepository.getTest();
        // print(joke.id);
        emit(TesterLoadedState(joke));

      } catch (e) {
        emit(TesterErrorState(e.toString()));
      }
    });
  }
}