import 'package:basketball_counter/cupit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void counterIncrement({required String teamName, required int buttonNumber}) {
    if (teamName == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  void counterReset() {
    teamAPoints = 0;
    teamBPoints = 0;
  }
}
