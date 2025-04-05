import 'package:flutter/material.dart';
import 'package:learner_flutter/Screens/PurchaseMoreScreen.dart';
import 'package:learner_flutter/utils/LearnerColors.dart';

class LearnerFavourites extends StatefulWidget {
  @override
  _LearnerFavouritesState createState() => _LearnerFavouritesState();
}

class _LearnerFavouritesState extends State<LearnerFavourites> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: learner_layout_background,
        body: PurchaseMoreScreen(enableAppbar: true),
      ),
    );
  }
}
