import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'conversation_event.dart';

part 'conversation_state.dart';

class ConversationBloc extends Bloc<ConversationEvent, ConversationState> {
  ConversationBloc() : super(const ConversationState(isHidden: true)) {
    on<HideNotificationEvent>((event, emit) {
      emit(state.copyWith(isHidden: !event.isHidden));
    });
  }
}
