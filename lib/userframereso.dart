import 'package:flutter/material.dart';

class UserFrameReso extends StatefulWidget {
  UserFrameReso({Key key}) : super(key: key);

  @override
  _UserFrameResoState createState() => _UserFrameResoState();
}

class _UserFrameResoState extends State<UserFrameReso> {
  final _sensorResoW = "0";
  final _sensorResoH = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 125.0,
          child: Container(
            margin: EdgeInsets.only(right: 5.0, bottom: 15.0),
            child: Text(
              "Frame Line\nResolution",
              textAlign: TextAlign.right,
            ),
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
                    "$_sensorResoW",
                    style: Theme.of(context).textTheme.display3,
                  ),
                ),
                Container(
                                    padding: EdgeInsets.only(right: 50.0),

                    child: Text(
                  "Width",
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
                  "$_sensorResoW",
                  style: Theme.of(context).textTheme.display3,
                ),
              ),
              Container(
                                  padding: EdgeInsets.only(right: 45.0),

                  child: Text(
                "Height",
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
