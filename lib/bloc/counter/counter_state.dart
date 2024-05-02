import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counter;

  const CounterState({required this.counter});

  CounterState copyWith({int? counter}) {
    return CounterState(counter: counter ?? this.counter);  //if Null then return this.counter i.e 0
  }


  @override
  List<Object> get props => [counter];   // this is quatable package method to compare objects
}