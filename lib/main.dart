import 'package:flutter/material.dart';
import 'package:text_editor/Pages/home_page.dart';
import 'package:text_editor/Pages/writing_page.dart';
import 'package:text_editor/components/apperances_comp.dart' as appearance;
import 'package:text_editor/screens/onboarding/onboarding.dart';
import 'package:text_editor/screens/splash_screen_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appearance.switchValDark==true?ThemeData.dark():ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
