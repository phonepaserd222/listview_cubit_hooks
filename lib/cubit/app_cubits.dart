import 'package:bloc/bloc.dart';
import 'package:listview_cubit_hooks/cubit/app_cubit_state.dart';

class AppCubits extends Cubit {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
}
