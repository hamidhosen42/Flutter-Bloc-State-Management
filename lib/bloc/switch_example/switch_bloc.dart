import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_learning/bloc/switch_example/switch_event.dart';
import 'package:flutter_bloc_learning/bloc/switch_example/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvents, SwitchStates> {
  SwitchBloc() : super(SwitchStates()) {
    on<EnableOrDisableNotification>(_enableOrDisableNotification);
  }

  void _enableOrDisableNotification(
      EnableOrDisableNotification event, Emitter<SwitchStates> emit) {
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }
}
