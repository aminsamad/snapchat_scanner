import 'package:flutter/material.dart';

class ScanningPage extends StatefulWidget {
  @override
  _ScanningPageState createState() => _ScanningPageState();
}

class _ScanningPageState extends State<ScanningPage> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFFF5D000), Color(0xFFFD8F00)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 180.0, 50.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "یوسه‌رنه‌یمه‌كه‌ت بنوسه‌و \nپه‌نجه‌ له‌ سكانكردن بده‌",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = linearGradient),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFFF5D000)),
            )
          ],
        ),
      ),
    );
  }
}
