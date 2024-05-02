import 'package:equatable/equatable.dart';


abstract class CounterEvent extends Equatable {  //this is the event abstact class
  const CounterEvent();

  @override
  List<Object> get props => [];
}


class IncrementCounter extends CounterEvent {   //this is the event class
  const IncrementCounter();
}

class DecrementCounter extends CounterEvent { //this is the event class
  const DecrementCounter();
}