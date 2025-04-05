import 'package:flutter/material.dart';
import 'package:learner_flutter/Screens/LearnerSplashScreen.dart';
import 'package:nb_utils/nb_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learner App',
      home: LearnerSplashScreen(),
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
    );
  }
}
