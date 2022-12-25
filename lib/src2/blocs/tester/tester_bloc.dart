import 'package:bloc/bloc.dart';
import 'package:test_flutter/src2/Cash.dart';
import 'package:test_flutter/src2/blocs/tester/tester_event.dart';
import 'package:test_flutter/src2/blocs/tester/tester_state.dart';

import '../../data/respository/test_provider.dart';

class TesterBloc extends Bloc<TesterEvent, TesterState> {
  TesterBloc() : super(TesterLoadingState()) {
    final TestRepository testerRepository = TestRepository();

    on<LoadTesterEvent>((event, emit) async {
      if (Cash.get_data_home_page.id == "") {
        /// new  Loading data
        emit(TesterLoadingState());
        try {
          final joke = await testerRepository.getTest();
          Cash.set_data_home_page = joke;
          // print(joke.id);
          emit(TesterLoadedState(joke));
        } catch (e) {
          emit(TesterErrorState(e.toString()));
        }
      } else {
        emit(TesterLoadedState(Cash.get_data_home_page));
      }
    });
  }
}
