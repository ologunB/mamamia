import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appewejrfbe/ui/styles/spacing.dart';
import 'package:flutter_appewejrfbe/ui/styles/styles.dart';
import 'package:flutter_appewejrfbe/ui/widgets/custom_text_widget.dart';
import 'package:flutter_appewejrfbe/ui/widgets/home_item1.dart';
import 'package:flutter_appewejrfbe/ui/widgets/home_item2.dart';
import 'package:flutter_appewejrfbe/ui/widgets/home_item3.dart';
import 'package:flutter_appewejrfbe/ui/widgets/size_calculator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController todoController = ScrollController();

  @override
  void initState() {
    todoController.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CarouselOptions carouselOptions = CarouselOptions(
        height: MediaQuery.of(context).size.height / 5.5,
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
        pauseAutoPlayOnTouch: true);

    return Scaffold(
      backgroundColor: Styles.colorWhite,
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Styles.colorGrey.withOpacity(.15),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.asset('images/avatar.png',
                            height: screenAwareSize(68, context)),
                        CustomText(
                          'Good Morning\nTolulope',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        Expanded(child: SizedBox()),
                        Image.asset('images/notification.png',
                            height: screenAwareSize(30, context)),
                      ],
                    ),
                  ),
                ),
                CarouselSlider(
                  options: carouselOptions,
                  items: [
                    "",
                    "",
                  ].map((i) {
                    return  Container(
                      width: screenWidth(context),
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Styles.appCanvasGreen,
                                Styles.appCanvasGreenDark
                              ]),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText('Net worth',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  rightMargin: 10,
                                  color: Styles.colorWhite),
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Color(0xff0abf52),
                                    borderRadius:
                                    BorderRadius.circular(30)),
                                child: Icon(Icons.visibility_off,
                                    color: Styles.colorWhite),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText('₦',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Styles.colorWhite),
                              CustomText('3,000',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30,
                                  color: Styles.colorWhite),
                              CustomText('.00',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Styles.colorWhite),
                            ],
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
                verticalSpaceMedium
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              shrinkWrap: true,padding: EdgeInsets.zero,
              children: [
                CustomText('ACHIEVE YOUR MONEY GOALS',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    topMargin: 20,
                    rightMargin: 10,
                    color: Styles.colorGrey),
                HomeItem1(
                  image: 'invest-inactive',
                  text: 'Invest in pre-vetted\nopportunities',
                ),
                HomeItem1(
                  image: 'save-inactive',
                  text: 'Create/Join a savings\nchallenge',
                ),
                CustomText('QUICK ACTIONS',
                    fontWeight: FontWeight.w700,
                    topMargin: 30,
                    bottomMargin: 10,
                    fontSize: 16,
                    rightMargin: 10,
                    color: Styles.colorGrey),
                Row(
                  children: [
                    Expanded(child: Image.asset('images/fund-wallet.png')),
                    horizontalSpaceMedium,
                    Expanded(child: Image.asset('images/save-wallet.png')),
                  ],
                ),
                verticalSpaceMedium,
                Row(
                  children: [
                    Expanded(child: Image.asset('images/transfer-money.png')),
                    horizontalSpaceMedium,
                    Expanded(child: Image.asset('images/pay-bills.png')),
                  ],
                ),
                verticalSpaceMedium,
                CustomText('TO DO',
                    fontWeight: FontWeight.w700,
                    topMargin: 30,
                    bottomMargin: 10,
                    fontSize: 16,
                    rightMargin: 10,
                    color: Styles.colorGrey),
                Container(
                  height: screenAwareSize(90, context),
                  child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return HomeItem2(
                            text1: 'Complete your profile',
                            text2: 'Tell us more about yourself');
                      }),
                ),
                CustomText('REFER & EARN',
                    fontWeight: FontWeight.w700,
                    topMargin: 30,
                    bottomMargin: 10,
                    fontSize: 16,
                    rightMargin: 10,
                    color: Styles.colorGrey),
                HomeItem3(
                  text1: 'Earn up to N1000 per referral',
                  text2:
                      'Get paid every time you refer someone to\nuse Jetseed',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
