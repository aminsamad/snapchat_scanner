import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snapchat_scanner/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).scaffoldBackgroundColor));
    return MaterialApp(
      title: 'Snapchat Scanner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "kurdish"),
      home: HomePage(),
    );
  }
}
