import 'package:flutter/material.dart';
import 'package:learner_flutter/Screens/PurchaseMoreScreen.dart';
import 'package:learner_flutter/utils/AppWidget.dart';
import 'package:learner_flutter/utils/LearnerColors.dart';
import 'package:learner_flutter/utils/LearnerConstant.dart';
import 'package:learner_flutter/utils/LearnerStrings.dart';
import 'package:nb_utils/nb_utils.dart';

class LearnerAchievements extends StatefulWidget {
  @override
  _LearnerAchievementsState createState() => _LearnerAchievementsState();
}

class _LearnerAchievementsState extends State<LearnerAchievements> {
  @override
  void initState() {
    super.initState();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: learner_layout_background,
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: learner_layout_background,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(170),
              child: Container(
                color: Colors.white,
                child: SafeArea(
                  child: Container(
                    color: learner_layout_background,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: MediaQuery.of(context).size.width,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back, color: learner_colorPrimary),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                        text(learner_lbl_achievements, fontSize: textSizeLarge, fontFamily: fontBold, textColor: learner_textColorPrimary),
                        SizedBox(height: 16),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.3,
                          child: TabBar(
                            labelPadding: EdgeInsets.only(left: 0, right: 0),
                            indicatorWeight: 4.0,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: learner_colorPrimary,
                            labelColor: learner_colorPrimary,
                            isScrollable: true,
                            unselectedLabelColor: learner_textColorSecondary,
                            tabs: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: Text(learner_lbl_badges, style: TextStyle(fontSize: 18.0, fontFamily: fontBold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: Text(learner_lbl_leader_board, style: TextStyle(fontSize: 18.0, fontFamily: fontBold)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ).paddingOnly(left: 12, right: 16),
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                PurchaseMoreScreen(),
                PurchaseMoreScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
