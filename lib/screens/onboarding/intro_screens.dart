// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:smart_pay/screens/onboarding/signin_request.dart';
import 'package:smart_pay/utils/colors.dart';
import 'package:smart_pay/utils/images.dart';
import 'package:smart_pay/widget/spacing.dart';
import 'package:smart_pay/widget/texts.dart';

Future<Future<bool?>> _showExitConfirmationDialog(BuildContext context) async {
  return showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Confirmation'),
      content: Text('Are you sure you want to exit?'),
      actions: <Widget>[
        InkWell(
          child: Text('No'),
          onTap: () => Navigator.of(context)
              .pop(false), // Return false when 'No' is pressed
        ),
        InkWell(
          child: Text('Yes'),
          onTap: () => Navigator.of(context)
              .pop(true), // Return true when 'Yes' is pressed
        ),
      ],
    ),
  );
}

class IntroScreens extends StatefulWidget {
  const IntroScreens({super.key});

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  final _pageController = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> allScreens = [
      IntroPageItems(
          background: Images.slide1,
          title: 'Easy Airtime &\nData Purchase',
          pageIndex: pageIndex,
          controller: _pageController,
          subtitle:
              'Level up your credit experience with instance credit confirmations, real-time reconcilation, bill payment and more'),
      IntroPageItems(
          background: Images.slide2,
          pageIndex: pageIndex,
          controller: _pageController,
          title: "Seamless money transfer",
          subtitle:
              "Many transfer ans accept any type of digital payument on the go anytime anywhere"),
      IntroPageItems(
          background: Images.slide3,
          pageIndex: pageIndex,
          controller: _pageController,
          title: "Send money accross Africa with SmartPay",
          subtitle:
              'The ,ore money works for youi, the less you work for money'),
    ];

    return Scaffold(
      backgroundColor: white,
      body: PageView(
        controller: _pageController,
        allowImplicitScrolling: true,
        // reverse: true,
        padEnds: false,
        pageSnapping : true,
        physics: BouncingScrollPhysics(),
        children: allScreens,
        onPageChanged: (int currentIndex) {
          setState(() {
            pageIndex = currentIndex;
          });
        },
      ),
    );
  }
}

class IntroPageItems extends StatefulWidget {
  IntroPageItems(
      {required this.background,
      required this.controller,
      required this.title,
      required this.pageIndex,
      required this.subtitle,
      Key? key})
      : super(key: key);
  String background = '';
  String title = '';
  String subtitle = '';
  int pageIndex;
  PageController controller;
  @override
  State<IntroPageItems> createState() => _IntroPageItemsState();
}

class _IntroPageItemsState extends State<IntroPageItems> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.58,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(assetPath(widget.background)),
                        fit: BoxFit.fitWidth)),
              ),
            ],
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Expanded(
                flex: 48,
                child: Container(),
              ),
              Expanded(
                flex: 49,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: TextOf(
                            widget.title,
                            25,
                            purple,
                            FontWeight.w700,
                            align: TextAlign.left,
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextOf(
                        widget.subtitle,
                        15,
                        black,
                        FontWeight.w400,
                        align: TextAlign.left,
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Indicator(
                                          currentIndex: 0,
                                          pageIndex: widget.pageIndex),
                                      Indicator(
                                          currentIndex: 1,
                                          pageIndex: widget.pageIndex),
                                      Indicator(
                                          currentIndex: 2,
                                          pageIndex: widget.pageIndex),
                                    ],
                                  ),
                                  InkWell(
                                      onTap: () {
                                        widget.pageIndex != 2
                                            ? widget.controller.animateToPage(2,
                                                duration: Duration(milliseconds: 200),
                                                curve: Curves.easeIn)
                                            : Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                                return RequestSignIn();
                                              }));
                                      },
                                      child: TextOf(
                                          widget.pageIndex != 2
                                              ? 'Skip'
                                              : 'Login',
                                          16,
                                          purple,
                                          FontWeight.w500))
                                ],
                              ))
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Indicator extends StatefulWidget {
  Indicator({required this.currentIndex, required this.pageIndex, super.key});
  int pageIndex, currentIndex = 0;
  @override
  State<Indicator> createState() => _IndicatorState();
}

class _IndicatorState extends State<Indicator> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: widget.pageIndex == widget.currentIndex ? 25 : 10,
            height: 10,
            child: Container(
              decoration: BoxDecoration(
                  color: widget.pageIndex == widget.currentIndex
                      ? purple.withOpacity(0.7)
                      : purple.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)),
            )),
        SizedBox(
          width: 7,
        )
      ],
    );
    ;
  }
}
