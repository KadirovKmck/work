import 'package:flutter/material.dart';
import 'package:work_r/apps/views/register/main_home_register.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainHomePage(),
      // home: TenderView(),

      debugShowCheckedModeBanner: false,
    );
  }
}
