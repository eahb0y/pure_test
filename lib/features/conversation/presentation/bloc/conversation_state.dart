part of 'conversation_bloc.dart';

class ConversationState extends Equatable {
  final bool isHidden;

  const ConversationState({
    required this.isHidden,
  });

  ConversationState copyWith({
    bool? isHidden,
  }) {
    return ConversationState(
      isHidden: isHidden ?? this.isHidden,
    );
  }

  @override
  List<Object?> get props => [isHidden];
}
