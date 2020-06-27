import 'package:equatable/equatable.dart';

class Counter extends Equatable{
  final int value;
  Counter(this.value);

  @override
  List<Object> get props => [value];

  @override
  bool get stringify => true;

}