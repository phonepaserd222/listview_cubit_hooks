import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listview_cubit_hooks/cubit/app_cubit_logics.dart';
import 'package:listview_cubit_hooks/cubit/app_cubits.dart';

void main() => runApp(const CounterApp());

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: BlocProvider<AppCubits>(
          create: (context) => AppCubits(),
          child: const AppCubitLogics(),
        ));
  }
}
