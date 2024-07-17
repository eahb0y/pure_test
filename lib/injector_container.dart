import 'package:get_it/get_it.dart';
import 'package:pure_test/core/local_source/local_source.dart';
import 'package:pure_test/features/main/presentation/bloc/main_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerSingleton<LocalSource>(LocalSource());
  mainFeatures();
}

void mainFeatures(){
  sl.registerFactory(() => MainBloc());
}