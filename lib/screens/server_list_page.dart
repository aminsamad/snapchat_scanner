import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapchat_scanner/screens/shared_widgets/server_list_widget.dart';

class ServerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Row(children: [
                Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        border: Border.all(
                          color: Colors.grey[500],
                        ),
                        shape: BoxShape.circle),
                    child: IconButton(
                      color: Colors.grey[600],
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_rounded),
                    ))
              ]),
              SizedBox(height: 10),
              Text(
                "Snapchat Scanner",
                style: TextStyle(color: Color(0xFFD18800)),
              ),
              SizedBox(height: 10),
              Text("لیستی سكانكراوه‌كان",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 22,
                  )),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 25, right: 25),
                padding: EdgeInsets.only(left: 2, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                    border: Border.all(color: Colors.grey[600])),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    prefixIcon: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFFFAEB6A)),
                        child: Icon(CupertinoIcons.search)),
                    hintText: "... گه‌ڕان",
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "لیستی سكان",
                    )),
              ),
              SizedBox(height: 40),

              // for (var count = 0; count < 10; count++)
              //   ServerListCard(
              //           shadowColor: Color(0xFFF7D201),
              //           lineColor: Color(0xFFF7D201),
              //           scannedColor: Color(0xFFF7D201),
              //           scannedText: "Scanned",
              //           userName: "amin_samad2",
              //           result: "دیارنه‌كه‌وت",
              //           color1: Colors.white,
              //           color2: Color(0xFFF0E4A4).withOpacity(0.3),
              //         ),

              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      ServerListCard(
                        shadowColor: Color(0xFF63CD71),
                        lineColor: Color(0xFF63CD71),
                        scannedColor: Color(0xFF63CD71),
                        scannedText: "Scanned",
                        userName: "amin_samad2",
                        result: "دۆزرایه‌وه‌",
                        color1: Colors.white,
                        color2: Color(0xFF66D688).withOpacity(0.3),
                      ),
                      ServerListCard(
                        shadowColor: Color(0xFF63CD71),
                        lineColor: Color(0xFF63CD71),
                        scannedColor: Color(0xFF63CD71),
                        scannedText: "Scanned",
                        userName: "cute_gir276",
                        result: "دۆزرایه‌وه‌",
                        color1: Colors.white,
                        color2: Color(0xFF66D688).withOpacity(0.3),
                      ),
                      ServerListCard(
                        shadowColor: Color(0xFF63CD71),
                        lineColor: Color(0xFF63CD71),
                        scannedColor: Color(0xFF63CD71),
                        scannedText: "Scanned",
                        userName: "notelakam2",
                        result: "دۆزرایه‌وه‌",
                        color1: Colors.white,
                        color2: Color(0xFF66D688).withOpacity(0.3),
                      ),
                      ServerListCard(
                        shadowColor: Color(0xFF63CD71),
                        lineColor: Color(0xFF63CD71),
                        scannedColor: Color(0xFF63CD71),
                        scannedText: "Scanned",
                        userName: "a7a_single",
                        result: "دۆزرایه‌وه‌",
                        color1: Colors.white,
                        color2: Color(0xFF66D688).withOpacity(0.3),
                      ),
                      ServerListCard(
                        shadowColor: Color(0xFF63CD71),
                        lineColor: Color(0xFF63CD71),
                        scannedColor: Color(0xFF63CD71),
                        scannedText: "Scanned",
                        userName: "samo_kurdi",
                        result: "دۆزرایه‌وه‌",
                        color1: Colors.white,
                        color2: Color(0xFF66D688).withOpacity(0.3),
                      ),
                      ServerListCard(
                        shadowColor: Color(0xFF63CD71),
                        lineColor: Color(0xFF63CD71),
                        scannedColor: Color(0xFF63CD71),
                        scannedText: "Scanned",
                        userName: "kcha_chomany652",
                        result: "دۆزرایه‌وه‌",
                        color1: Colors.white,
                        color2: Color(0xFF66D688).withOpacity(0.3),
                      ),
                      ServerListCard(
                        shadowColor: Color(0xFF63CD71),
                        lineColor: Color(0xFF63CD71),
                        scannedColor: Color(0xFF63CD71),
                        scannedText: "Scanned",
                        userName: "simokam19",
                        result: "دۆزرایه‌وه‌",
                        color1: Colors.white,
                        color2: Color(0xFF66D688).withOpacity(0.3),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
