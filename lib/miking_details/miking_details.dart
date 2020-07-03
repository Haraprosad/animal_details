import 'package:animal_details/routes/routes.gr.dart';
import 'package:animal_details/shared/colors.dart';
import 'package:animal_details/shared/constants.dart';
import 'package:animal_details/shared/sample_intro_card.dart';
import 'package:animal_details/shared/size_config.dart';
import 'package:animal_details/shared/text_styles.dart';
import 'package:animal_details/shared_widgets/app_bar_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class MikingDetails extends StatefulWidget {
  @override
  _MikingDetailsState createState() => _MikingDetailsState();
}

class _MikingDetailsState extends State<MikingDetails> {
  //***********todo: this have to be dynamic
  String name = "Nandini";
  String cowType = "Shahiwal";
  String imgUrl = "assets/images/cow_img.jpeg";
  String serialNumber = "1280";
  String milkAmount = "1200L";
  //***************************************
  String monthName = "January";
  bool isSwitched = false;
  bool isSwitched2 = false;
  int groupValue = 1;
  bool isWeekSelected = true;
  bool isMonthSelected = false;
  bool isQuarterSelected = false;
  bool isLocationSelected = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBarWidget.getAppBarWidget("Milking Details"),
      body: SingleChildScrollView(
        child: InkWell(
          onTap: () {
            //todo
            ExtendedNavigator.of(context).pushNamed(Routes.pregnencyDetails);
          },
          child: Container(
            color: backgroundColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: medPadH * 2,
                ),
                Container(
                  color: backgroundColor,
                  margin: EdgeInsets.symmetric(horizontal: medPadH),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SampleIntroCard.getSimpleImageCard(
                          context, name, cowType, imgUrl, serialNumber),
                      SizedBox(
                        height: medPadH,
                      ),
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ButtonTheme(
                                  child: RaisedButton(
                                    color: isWeekSelected
                                        ? boxColor
                                        : backgroundColor,
                                    child: Text(
                                      "This Week",
                                      style: isWeekSelected
                                          ? subTextStyleActive
                                          : subTextStyle,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isQuarterSelected = false;
                                        isWeekSelected = true;
                                        isLocationSelected = false;
                                        isMonthSelected = false;
                                      });
                                      //todo
                                    },
                                  ),
                                  minWidth: 135,
                                ),
                                ButtonTheme(
                                  minWidth: 135,
                                  child: RaisedButton(
                                    color: isQuarterSelected
                                        ? boxColor
                                        : backgroundColor,
                                    child: Text(
                                      "This Quarter",
                                      style: isQuarterSelected
                                          ? subTextStyleActive
                                          : subTextStyle,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isQuarterSelected = true;
                                        isWeekSelected = false;
                                        isLocationSelected = false;
                                        isMonthSelected = false;
                                      });
                                      //todo
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: smallpad,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ButtonTheme(
                                  child: RaisedButton(
                                    color: isMonthSelected
                                        ? boxColor
                                        : backgroundColor,
                                    child: Text(
                                      "This Month",
                                      style: isMonthSelected
                                          ? subTextStyleActive
                                          : subTextStyle,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isQuarterSelected = false;
                                        isWeekSelected = false;
                                        isLocationSelected = false;
                                        isMonthSelected = true;
                                      });
                                      //todo
                                    },
                                  ),
                                  minWidth: 135,
                                ),
                                ButtonTheme(
                                  minWidth: 135,
                                  child: RaisedButton(
                                    color: isLocationSelected
                                        ? boxColor
                                        : backgroundColor,
                                    child: Text(
                                      "This Lactation",
                                      style: isLocationSelected
                                          ? subTextStyleActive
                                          : subTextStyle,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isQuarterSelected = false;
                                        isWeekSelected = false;
                                        isLocationSelected = true;
                                        isMonthSelected = false;
                                      });
                                      //todo
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: medPadH * 2,
                ),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        monthName,
                        style: subTextStyle,
                      ),
                      SizedBox(
                        width: medPadH,
                      ),
                      DropdownButton(
                        dropdownColor: boxColor,
                        focusColor: backgroundColor,
                        items: <String>[
                          "January",
                          "February",
                          "March",
                          "April",
                          "May",
                          "June",
                          "July",
                          "August",
                          "September",
                          "October",
                          "November",
                          "December"
                        ]
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            monthName = value;
                          });
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: medPadH,
                ),
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        color: boxColor,
                        height: 50,
                        width: 280,
                        child: Center(
                          child: Text(
                            "Total Milk Production",
                            style: subTextStyleActive,
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 280,
                        child: Card(
                          child: Center(
                            child: Text(
                              milkAmount,
                              style: boxSemiLightTextStyleBig,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
