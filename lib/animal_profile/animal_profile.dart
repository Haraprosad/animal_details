import 'package:animal_details/routes/routes.gr.dart';
import 'package:animal_details/shared/colors.dart';
import 'package:animal_details/shared/constants.dart';
import 'package:animal_details/shared/size_config.dart';
import 'package:animal_details/shared/text_styles.dart';
import 'package:animal_details/shared_widgets/app_bar_widget.dart';
import 'package:animal_details/shared_widgets/serial_tag_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class AnimalProfile extends StatefulWidget {
  @override
  _AnimalProfileState createState() => _AnimalProfileState();
}

class _AnimalProfileState extends State<AnimalProfile> {
  //***********todo: this have to be dynamic
  String name = "Nandini";
  String cowType = "Shahiwal";
  String imgUrl = "assets/images/cow_img.jpeg";
  String serialNumber = "1280";
  String milkAmount = "1200L";
  String deliveryDate = "20/12/21";
  String tagId = "1382";
  String age = "36 months";
  String breed = "Sahiwal";
  String type = "Cow";
  String noOfDeliveries = "05";
  //***************************************
  String monthName = "January";
  bool isSwitched = false;
  bool isSwitched2 = false;
  int groupValue = 1;
  int gValue = 1;
  bool isGrandSireSelected = true;
  bool isDamSireSelected = false;
  bool isSireSelected = false;
  bool isDamSelected = false;
  bool is2ndDamSelected = false;
  bool isGrandDam = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBarWidget.getAppBarWidget("Animal Profile"),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                ExtendedNavigator.of(context).pushNamed(Routes.familyDetails);
              },
              child: Container(
                height: 340,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 280,
                        child: Image.asset(
                          cowImageUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      left: medPadH,
                      top: medPadH,
                      child: SerialTagCard.getCard(serialNumber),
                    ),
                    Positioned(
                      right: medPadH,
                      top: medPadH,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.black45,
                              child: Icon(
                                Icons.edit,
                                color: backgroundColor,
                              ),
                            ),
                            onTap: () {
                              //todo
                            },
                          ),
                          SizedBox(
                            height: smallpad * 2,
                          ),
                          InkWell(
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.black45,
                              child: Icon(
                                Icons.delete,
                                color: backgroundColor,
                              ),
                            ),
                            onTap: () {
                              //todo
                            },
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: smallpad * 2,
                      right: smallpad * 2,
                      bottom: 0,
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: boxColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: boxColor,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(18),
                                      topLeft: Radius.circular(18))),
                              height: 60,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: medPadH),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Name",
                                          style: TextStyle(
                                            color: backgroundColor,
                                            fontSize: 14,
                                            fontFamily: robotoBlack,
                                            fontWeight: FontWeight.w200,
                                          ),
                                        ),
                                        Text(
                                          name,
                                          style: nameTextStyleWhite,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: medPadH),
                                    child: ButtonTheme(
                                      minWidth: 150,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                      ),
                                      child: RaisedButton(
                                        onPressed: () {
                                          //todo
                                        },
                                        color: backgroundColor,
                                        child: Text(
                                          "Details",
                                          style: TextStyle(
                                              color: boxColor,
                                              fontFamily:
                                                  formaDjrBannerFontFamily,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              letterSpacing: 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(18),
                                      bottomLeft: Radius.circular(18))),
                              height: 60,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(18),
                                        bottomLeft: Radius.circular(18))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.calendar_today),
                                    SizedBox(
                                      width: smallpad * 2,
                                    ),
                                    Container(
                                      color: textColorWhiteEffect,
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "Delivery Date - $deliveryDate",
                                        style: subTextStyle,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: smallpad * 2,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: medPadH),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //*******Tag Id********
                  getSampleCard("Tag Id", tagId),
                  //******Name*********
                  getSampleCard("Name", name),
                  //******Age*********
                  getSampleCard("Age", age),
                  //******Breed*********
                  getSampleCard("Breed", breed),
                  //******Type*********
                  getSampleCard("Type", type),
                  //******Gender*********
                  getSampleCardWithRadioButton(),
                  //*******No.Of Deliveries*******
                  getSampleCardNumberOfDeliveries(noOfDeliveries),
                  //**********button**********
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ButtonTheme(
                          height: 45,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: RaisedButton(
                            onPressed: () {
                              //todo
                            },
                            color: boxColor,
                            child: Text(
                              "Save",
                              style: btnTextStyleWhite,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.smallPad,
                      ),
                      Expanded(
                        flex: 1,
                        child: ButtonTheme(
                          height: 45,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: OutlineButton(
                            borderSide: BorderSide(
                              color: textColorWhiteEffect,
                              width: 2,
                            ),
                            color: boxColor,
                            onPressed: () {
                              //todo
                            },
                            child: Text(
                              "Next",
                              style: btnTextStyleColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: medPadH * 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  getSampleCardWithRadioButton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                child: Card(
                  child: Center(
                    child: Text(
                      "Gender",
                      style: boxSemiLightTextStyle,
                    ),
                  ),
                ),
              ),
              flex: 3,
            ),
            Expanded(
              flex: 7,
              child: Container(
                height: 50,
                child: Card(
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Radio(
                          value: 1,
                          groupValue: gValue,
                          onChanged: (value) {
                            setState(() {
                              gValue = value;
                            });
                          },
                        ),
                        Text(
                          "Male",
                          style: subTextStyleBold,
                        ),
                        Radio(
                          value: 2,
                          groupValue: gValue,
                          onChanged: (value) {
                            setState(() {
                              gValue = value;
                            });
                          },
                        ),
                        Text(
                          "Female",
                          style: subTextStyleBold,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: smallpad * 2,
        ),
        //******Name*********
      ],
    );
  }

  getSampleCardNumberOfDeliveries(String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                child: Card(
                  child: Center(
                    child: Text(
                      "No. of Deliveries",
                      style: boxSemiLightTextStyle,
                    ),
                  ),
                ),
              ),
              flex: 6,
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: 50,
                child: Card(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: medPadH),
                    child: Text(
                      value,
                      style: subTextStyleBold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: smallpad * 2,
        ),
        //******Name*********
      ],
    );
  }
}

Widget getSampleCard(String title, String value) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              child: Card(
                child: Center(
                  child: Text(
                    title,
                    style: boxSemiLightTextStyle,
                  ),
                ),
              ),
            ),
            flex: 3,
          ),
          Expanded(
            flex: 7,
            child: Container(
              height: 50,
              child: Card(
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: medPadH),
                  child: Text(
                    value,
                    style: subTextStyleBold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      SizedBox(
        height: smallpad * 2,
      ),
      //******Name*********
    ],
  );
}
