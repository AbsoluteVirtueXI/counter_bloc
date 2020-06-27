import 'package:equatable/equatable.dart';

//enum CounterEvent{increment, decrement}

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class IncrementCounter extends CounterEvent {
  const IncrementCounter();

  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}

class DecrementCounter extends CounterEvent {
  const DecrementCounter();

  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}