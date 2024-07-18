part of 'conversation_bloc.dart';

sealed class ConversationEvent extends Equatable {
  const ConversationEvent();
}

final class HideNotificationEvent extends  ConversationEvent{
  final bool isHidden;

  const HideNotificationEvent({required this.isHidden});
  @override
  List<Object?> get props => [isHidden];
}
