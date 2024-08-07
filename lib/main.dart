import 'package:flutter/cupertino.dart';
import 'package:pure_test/app.dart';
import 'package:pure_test/injector_container.dart' as di;
void main() async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const App();
  }
}


