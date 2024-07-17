part of 'main_bloc.dart';

sealed class MainEvent extends Equatable {
  const MainEvent();
}


class ChangeTabEvent extends MainEvent{
  final MainTab tab;

  const ChangeTabEvent({required this.tab});
  @override
  List<Object?> get props => [tab];
}
