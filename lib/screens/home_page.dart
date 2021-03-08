import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'package:snapchat_scanner/screens/scanning.dart';
import 'package:snapchat_scanner/screens/server_list_page.dart';
import 'shared_widgets/server_list_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: CustomAppBar(),
          elevation: 0,
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                  top: 50,
                  child: Opacity(
                      opacity: .1,
                      child: Image.asset(
                        'assets/image/background.png',
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height / 1.5,
                      ))),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Center(
                          child: Text(
                        'سكانه‌ری سناپچات',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontFamily: "kurdish",
                            fontSize: 18),
                      )),
                      SizedBox(height: 15),
                      Spacer(),
                      Center(
                        child: AvatarGlow(
                          glowColor: Color(0xFFD18800),
                          endRadius: 115.0,
                          duration: Duration(milliseconds: 1500),
                          repeat: true,
                          showTwoGlows: true,
                          repeatPauseDuration: Duration(milliseconds: 80),
                          shape: BoxShape.circle,
                          child: Container(
                              height: 150,
                              padding: EdgeInsets.all(12),
                              width: 150,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xFFFAEB6A), blurRadius: 2)
                                  ]),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/image/snapchat.png',
                                      height: 50,
                                      width: 50,
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ),
                      Spacer(),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          child: Center(
                            child: SliderButton(
                                vibrationFlag: false,
                                alignLabel: Alignment.centerRight,
                                dismissible: false,
                                boxShadow: BoxShadow(
                                    color: Colors.grey[300], blurRadius: 5),
                                backgroundColor: Color(0xFFFAEB6A),
                                action: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return ScanningPage();
                                  }));
                                },
                                highlightedColor: Colors.orange,
                                label: Text(
                                  "كردنه‌وه‌ی لیسته‌كان      ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17),
                                ),
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.grey[500],
                                )),
                          )),
                      SizedBox(height: 35),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/image/snapchat.png', height: 30, width: 30),
          Text(
            "Snapchat Scanner",
            style: TextStyle(color: Colors.grey[700], fontSize: 18),
          ),
          Image.asset('assets/image/snapchat.png', height: 30, width: 30)
        ],
      ),
    );
  }
}

//
