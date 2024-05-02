import 'package:counter_bloc/bloc/counter/counter_bloc.dart';
import 'package:counter_bloc/bloc/counter/counter_event.dart';
import 'package:counter_bloc/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc,CounterState>(builder: (context,state){ //bloc buikder is used to listen to change
            return
              Center(
                child:Text(state.counter.toString(),style: TextStyle(fontSize: 60),),
              );
            },
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(IncrementCounter()); //calling the Bloc Event
                  },
                  child: const Text('Increment')
              ),
              const SizedBox(width: 14,),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(DecrementCounter());//calling the Bloc Event
                  },
                  child: const Text('Decrement')
              ),
            ]
          )
        ]
      ),
    );
  }
}
