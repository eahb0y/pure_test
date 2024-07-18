import 'package:get_it/get_it.dart';
import 'package:pure_test/core/local_source/local_source.dart';
import 'package:pure_test/features/conversation/presentation/bloc/conversation_bloc.dart';
import 'package:pure_test/features/main/presentation/bloc/main_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerSingleton<LocalSource>(LocalSource());
  _mainFeatures();
  _conversationFeatures();
}

void _mainFeatures(){
  sl.registerFactory(() => MainBloc());
}

void _conversationFeatures(){
  sl.registerFactory(()=> ConversationBloc());
}