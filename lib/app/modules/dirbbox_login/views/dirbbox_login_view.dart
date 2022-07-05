import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dirbbox_login_controller.dart';

class DirbboxLoginView extends GetView<DirbboxLoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              width: Get.width,
              child: Image.asset(
                "assets/dirbbox/bg_login.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 135,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset(
                      "assets/dirbbox/icon_login.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome to",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    "Dirbbox",
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 200,
                    child: Text(
                      "Best cloud storage platform for all business and individuals to manage there data\n\nJoin For Free.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/dirbbox/tumb.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Smart Id",
                              style: TextStyle(color: Color(0xff567df4)),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffeef7fe),
                            fixedSize: Size(150, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7))),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Sign In",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(Icons.arrow_right)
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff567DF4),
                            fixedSize: Size(150, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7))),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                      child: Text(
                    "Use Social Login",
                    style: TextStyle(fontSize: 16),
                  )),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/dirbbox/instagram.png",
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 60),
                      Image.asset(
                        "assets/dirbbox/twitter.png",
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 60),
                      Image.asset(
                        "assets/dirbbox/facebook.png",
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                      child: Text(
                    "Create Account",
                    style: TextStyle(fontSize: 16),
                  )),
                ],
              ),
            )
          ],
        ));
  }
}
