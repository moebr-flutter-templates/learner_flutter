import 'package:flutter/material.dart';
import 'package:learner_flutter/Screens/PurchaseMoreScreen.dart';
import 'package:learner_flutter/model/LearnerModels.dart';
import 'package:learner_flutter/utils/LearnerColors.dart';
import 'package:learner_flutter/utils/LearnerDataGenerator.dart';

class LearnerInstructorsDetails extends StatefulWidget {
  @override
  _LearnerInstructorsDetailsState createState() => _LearnerInstructorsDetailsState();
}

class _LearnerInstructorsDetailsState extends State<LearnerInstructorsDetails> {
  late List<LearnerFeaturedModel> mList1;

  @override
  void initState() {
    super.initState();
    mList1 = learnerGetFavourites();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: learner_layout_background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: new Container(
          color: learner_layout_background,
          child: new SafeArea(
            child: Container(
              color: learner_layout_background,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: learner_colorPrimary,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: learner_colorPrimary,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: PurchaseMoreScreen(),
    );
  }
}
