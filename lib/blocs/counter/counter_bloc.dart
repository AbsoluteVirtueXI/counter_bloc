import 'package:bloc/bloc.dart';
import 'package:counter_block/blocs/counter/counter.dart';

class CounterBloc extends Bloc<CounterEvent, Counter> {
  @override
  Counter get initialState => Counter(0);

  @override
  Stream<Counter> mapEventToState(CounterEvent event) async* {
    if(event is DecrementCounter) {
      yield _decrement();
    }else if (event is IncrementCounter) {
      yield _increment();
    }
  }

  Counter _increment() => Counter(state.value + 1);
  Counter _decrement() => Counter(state.value - 1);
}