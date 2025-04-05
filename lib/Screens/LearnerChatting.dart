import 'package:flutter/material.dart';
import 'package:learner_flutter/Screens/PurchaseMoreScreen.dart';
import 'package:learner_flutter/utils/AppWidget.dart';
import 'package:learner_flutter/utils/LearnerColors.dart';
import 'package:learner_flutter/utils/LearnerConstant.dart';
import 'package:learner_flutter/utils/LearnerImages.dart';
import 'package:nb_utils/nb_utils.dart';

class LearnerChattingScreen extends StatefulWidget {
  @override
  _LearnerChattingScreenState createState() => _LearnerChattingScreenState();
}

class _LearnerChattingScreenState extends State<LearnerChattingScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: learner_white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(width * 0.25),
          child: Container(
            color: Colors.white,
            child: SafeArea(
              child: Container(
                color: learner_white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_back, color: learner_colorPrimary),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              text("Marc Elliot", textColor: learner_textColorPrimary, fontSize: textSizeLargeMedium, fontFamily: fontMedium),
                              text("Active", textColor: learner_textColorSecondary, fontSize: textSizeMedium, fontFamily: fontRegular)
                            ],
                          ),
                          Image.network(learner_ic_profile4, height: 45, width: 45, fit: BoxFit.fill).cornerRadiusWithClipRRect(25),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ).paddingOnly(left: 12, right: 16),
              ),
            ),
          ),
        ),
        body: PurchaseMoreScreen(),
      ),
    );
  }
}
