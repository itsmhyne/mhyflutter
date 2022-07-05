import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapi/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Find your Comfort Food Here",
          body:
              "Here You Can find a chef or dish  for every taste and color. Enjoy!",
          image: Center(
            child: Container(
              margin: EdgeInsets.only(top: 75),
              width: 400,
              height: 400,
              child: Image.asset("assets/img/onboarding1.png"),
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 16.0),
            contentMargin: EdgeInsets.only(left: 70, right: 70, top: 25),
          ),
        ),
        PageViewModel(
          title: "Food Ninja is Where Your Comfort Food Lives",
          body: "Enjoy a fast and smooth food delivery at your doorstep",
          image: Center(
            child: Container(
              margin: EdgeInsets.only(top: 75),
              width: 400,
              height: 400,
              child: Image.asset("assets/img/onboarding2.png"),
            ),
          ),
          decoration: const PageDecoration(
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(fontSize: 16.0),
              contentMargin: EdgeInsets.only(left: 60, right: 60, top: 25),
              pageColor: Colors.white),
        )
      ],
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Color(0xff53E88B),
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
      done: const Text("Done",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xff53E88B))),
      showSkipButton: true,
      showBackButton: false,
      showNextButton: true,
      skip: const Text("Skip",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xff53E88B))),
      next: const Text("Next",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xff53E88B))),
      onDone: () {
        // Get.offAllNamed(Routes.HOME); //noback
        Get.toNamed(Routes.LOGIN); //iso back
      },
    ); //Material App
  }
}
