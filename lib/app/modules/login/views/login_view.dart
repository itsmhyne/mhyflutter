import 'package:flutter/material.dart';
import 'package:flutterapi/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: Get.width,
            child: Image.asset(
              "assets/img/pattern.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Image.asset(
                    "assets/img/logo.png",
                    width: 350,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Text(
                      "Login To Your Account",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 7),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextField(
                              style: TextStyle(fontSize: 14),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Email",
                                  hintStyle:
                                      TextStyle(color: Colors.grey[500])),
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 7),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(fontSize: 14),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle:
                                      TextStyle(color: Colors.grey[500])),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Or Contiunue With",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/img/facebook.png"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Facebook",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 14),
                                    )
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    fixedSize: Size(150, 50),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7))),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Get.toNamed(Routes.DIRBBOX_PROFILE);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/img/google.png"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Google",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 14),
                                    ),
                                    Icon(Icons.arrow_right)
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    fixedSize: Size(150, 50),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7))),
                              )
                            ],
                          ),
                          SizedBox(height: 25),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff53E88B)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.HOME);
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 15),
                                decoration: BoxDecoration(
                                  color: Color(0xff53E88B),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
