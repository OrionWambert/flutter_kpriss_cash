import 'package:bloc/bloc.dart';
import 'package:finance_mobile_app/core/usecase/use_case.dart';
import 'package:finance_mobile_app/features/counter/bloc/counter_bloc/counter_event.dart';
import 'package:finance_mobile_app/features/counter/bloc/counter_bloc/counter_state.dart';
import 'package:finance_mobile_app/features/counter/domains/usecase/increment_counter_usecase.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final IncrementCounterUseCase incrementCounterUseCase;

  CounterBloc(this.incrementCounterUseCase)
      : super(
          CounterStateUpdated(0),
        ) {
    on<IncrementCounterEvent>(_updateCounterEvent);
  }

  _updateCounterEvent(
      IncrementCounterEvent event, Emitter<CounterState> eventEmitter) async {

    final counterState = await incrementCounterUseCase(
      NoParam(),
    );
    counterState.fold((l) => null, (r) {
      return eventEmitter(CounterStateUpdated(r));
    });
  }
}
