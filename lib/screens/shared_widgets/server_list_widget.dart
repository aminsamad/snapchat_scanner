import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

class ServerListCard extends StatelessWidget {
  final Color shadowColor;
  final Color lineColor;
  final Color scannedColor;
  final String scannedText;
  final String userName;
  final String result;
  final Color color1, color2;

  const ServerListCard(
      {Key key,
      this.shadowColor,
      this.lineColor,
      this.scannedColor,
      this.scannedText,
      this.userName,
      this.result,
      this.color1,
      this.color2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              FlutterClipboard.copy(userName)
                  .then((value) => this._showToast(context));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 80,
                    width: 3,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 17,
                          color: shadowColor,
                        ),
                      ],
                      color: lineColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    padding:
                        EdgeInsets.only(top: 4, right: 10, left: 8, bottom: 8),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(colors: [color1, color2])),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(scannedText,
                            style: TextStyle(
                                fontFamily: "english",
                                fontSize: 16,
                                color: scannedColor)),
                        SizedBox(height: 10),
                        Text(userName,
                            style: TextStyle(
                                fontFamily: "english",
                                fontSize: 18,
                                color: Colors.grey[600])),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(result,
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey[500])),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        backgroundColor: Color(0xFFF0E4A4),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '${userName}',
              style: TextStyle(fontFamily: "english", color: Colors.grey[600]),
            ),
            Text(
              "... كۆپی بوو",
              style: TextStyle(fontFamily: "kurdish", color: Colors.grey[600]),
            )
          ],
        ),
      ),
    );
  }
}
