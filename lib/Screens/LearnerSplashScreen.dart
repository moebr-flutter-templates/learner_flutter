import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learner_flutter/Screens/LearnerWalkThrough.dart';
import 'package:learner_flutter/utils/AppWidget.dart';
import 'package:nb_utils/nb_utils.dart';

class LearnerSplashScreen extends StatefulWidget {
  @override
  _LearnerSplashScreenState createState() => _LearnerSplashScreenState();
}

class _LearnerSplashScreenState extends State<LearnerSplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    await 3.seconds.delay.then((value) => push(LearnerWalkThrough(), pageRouteAnimation: PageRouteAnimation.Slide, isNewTask: true));
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            commonCacheImageWidget("images/learner/app_logo.png", height: 250, width: 250),
          ],
        ).withWidth(context.width()),
      ),
    );
  }
}
