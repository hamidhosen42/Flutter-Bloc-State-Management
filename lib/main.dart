import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_learning/bloc/counter/counter_bloc.dart';
import 'package:flutter_bloc_learning/bloc/switch_example/switch_bloc.dart';
import 'package:flutter_bloc_learning/ui/counter/counter_screen.dart';
import 'ui/switch_example/switch_example_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: BlocProvider(
        create: (context) => SwitchBloc(),
        child: MaterialApp(
          title: 'Counter App',
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true),
          // home: CounterScreen(),
          home: SwitchExampleScreen(),
        ),
      ),
    );
  }
}