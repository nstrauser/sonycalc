import 'package:flutter/material.dart';

class UserRatio extends StatefulWidget {
  @override
  _UserRatioState createState() => _UserRatioState();
}

class _UserRatioState extends State<UserRatio> {
  TextEditingController userRatioH = TextEditingController();
  TextEditingController userRatioV = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(
            width: 136.0,
            child: Container(
                padding: EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                  right: 15.0,
                ),
                child: Text(
                  "User Aspect Ratio",
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.body1,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            width: 90.0,
            height: 35.0,
            child: TextField(
              controller: userRatioH,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 10.0, left: 5.0),
                labelStyle: TextStyle(),
                hintText: "0",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Text(" : ", style: Theme.of(context).textTheme.display4),
          Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              width: 90.0,
              height: 35.0,
              child: TextField(
                controller: userRatioV,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 10.0, left: 5.0),
                  labelStyle: TextStyle(),
                  hintText: "0",
                  border: OutlineInputBorder(),
                ),
              ))
        ]);
  }
}
