import 'package:flutter/material.dart';
import 'package:mobile/controller.dart';
import 'package:mobile/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppController().init();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'HL Assignment',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}