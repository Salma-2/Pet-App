import 'package:flutter/material.dart';
import 'package:pet_app/presentation/theme/theme.dart';
import 'presentation/screens/on_boarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Care',
      theme: AppTheme.lightTheme,
      home: OnBoardingPage(),
    );
  }
}
