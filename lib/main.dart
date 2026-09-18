import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/common/color_extension.dart';
import 'package:flutter_meditation_app/view/on_boarding/started_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation App Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        primaryColor: TColor.primaryColor1,
        fontFamily: "GreatVibes"
      ),
      home: const StartedView(),
    );
  }
}