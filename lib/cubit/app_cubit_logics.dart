import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listview_cubit_hooks/cubit/app_cubit_state.dart';
import 'package:listview_cubit_hooks/cubit/app_cubits.dart';
import 'package:listview_cubit_hooks/screen/welcome_screen.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is WelcomeState) {
            return const WelcomeScreen();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
