import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapi/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/dirbbox_profile_controller.dart';

class DirbboxProfileView extends GetView<DirbboxProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfff1f1f1),
        leading: IconButton(
            onPressed: () {
              Get.offAllNamed(Routes.DIRBBOX_LOGIN);
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Color(0xff222158)),
        title: Text(
          'My Profile',
          style: TextStyle(color: Color(0xff222158)),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.snackbar("Info", "More Clicked");
              },
              icon: Icon(Icons.more_horiz_sharp),
              color: Color(0xff222158))
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                        width: 75,
                        height: 75,
                        child: Image.asset(
                          "assets/dirbbox/profile.png",
                          fit: BoxFit.cover,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "M. Hamdan Yusuf",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff222158),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Fullstack Developer",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff222158),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff222158).withOpacity(0.6),
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xffff317b),
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(
                        child: Text(
                      "PRO",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Folders",
                  style: TextStyle(
                      color: Color(0xff222158),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.add,
                        color: Color(0xff222158),
                      ),
                      Icon(
                        Icons.display_settings_outlined,
                        color: Color(0xff222158),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff222158),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  title: "Mobile Apps",
                  date: "December, 20.2022",
                  color: Color(0xff415eb6),
                  image: Image.asset("assets/dirbbox/bluefolder.png"),
                ),
                CardFolder(
                  title: "SVG Icons",
                  date: "December, 20.2022",
                  color: Color(0xffffb110),
                  image: Image.asset("assets/dirbbox/yellowfolder.png"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  title: "Prototype",
                  date: "December, 20.2022",
                  color: Color(0xffac4040),
                  image: Image.asset("assets/dirbbox/redfolder.png"),
                ),
                CardFolder(
                  title: "Avatars",
                  date: "December, 20.2022",
                  color: Color(0xff23b0b0),
                  image: Image.asset("assets/dirbbox/greenfolder.png"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Uploads",
                  style: TextStyle(
                      color: Color(0xff222158),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.swap_vert,
                  color: Color(0xff222158),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Container(
                height: 50,
                width: 50,
                child: Image.asset(
                  "assets/dirbbox/word.png",
                  fit: BoxFit.cover,
                )),
            title: Text("Project.docx"),
            subtitle: Text("November, 20.2022"),
            trailing: Text("300Kb"),
          )
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  CardFolder(
      {Key? key,
      required this.title,
      required this.date,
      required this.color,
      required this.image})
      : super(key: key);

  final String title;
  final String date;
  final Color color;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: Get.width * 0.4,
      height: 120,
      decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image,
            SizedBox(
              height: 15,
            ),
            Text(
              title,
              style: TextStyle(
                  color: color, fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              date,
              style: TextStyle(
                color: color,
                fontSize: 14,
              ),
            ),
          ]),
    );
  }
}
