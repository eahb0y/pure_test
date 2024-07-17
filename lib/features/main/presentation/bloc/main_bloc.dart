import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState()) {
    on<ChangeTabEvent>((event, emit) {
    emit(state.copyWith(tab: event.tab));
    });
  }
}

enum MainTab { home, category, favourite, basket, profile }
