import 'package:better_calculator/calculator_view.dart';
import 'package:better_calculator/loading_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoadingScreen(),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/home': (context) => const CalculatorView(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/income': (context) => const IncomeTaxView(title: ''),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}