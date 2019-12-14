import 'package:flutter/material.dart';

class UserFrameLine extends StatefulWidget {
  UserFrameLine({Key key}) : super(key: key);

  @override
  _UserFrameLineState createState() => _UserFrameLineState();
}

class _UserFrameLineState extends State<UserFrameLine> {
  final _userFrameH = "0";
  final _userFrameV = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 5.0, bottom: 10.0),
          child: SizedBox(
            width: 37.0,
            child: Text(
              "* \n",
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.display3,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 5.0, bottom: 15.0),
          child: Text(
            "User Frame\nLine",
            textAlign: TextAlign.right,
          ),
        ),
        Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.only(
                top: 10.0,
                left: 5.0,
              ),
              color: Colors.grey[700],
              width: 90.0,
              height: 30.0,
              child: Text(
                "$_userFrameH",
                style: Theme.of(context).textTheme.display3,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right:18.0),
                child: Text(
              "Horizontal",
              style: Theme.of(context).textTheme.overline,
              textAlign: TextAlign.left,
            )),
          ],
        )),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.only(
                  top: 10.0,
                  left: 8.0,
                ),
                color: Colors.grey[700],
                width: 90.0,
                height: 30.0,
                child: Text(
                  "$_userFrameV",
                  style: Theme.of(context).textTheme.display3,
                ),
              ),
              Container(
                padding: EdgeInsets.only(right:30.0),
                  child: Text(
                "Vertical",
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.overline,
              )),
            ],
          ),
        )
      ],
    ));
  }
}
