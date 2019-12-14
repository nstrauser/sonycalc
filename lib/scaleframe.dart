import 'package:flutter/material.dart';

class ScaleFrame extends StatefulWidget {
  ScaleFrame({Key key}) : super(key: key);

  @override
  _ScaleFrameState createState() => _ScaleFrameState();
}

class _ScaleFrameState extends State<ScaleFrame> {
  TextEditingController scaleInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      SizedBox(
        width: 125.0,
        child: Container(
            child: Text(
          "Scale",
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.body1,
        )),
      ),
      Container(
        margin: EdgeInsets.all(15.0),
        width: 80.0,
        height: 35.0,
        child: TextFormField(
            controller: scaleInput,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 10.0, left: 5.0),
              labelStyle: TextStyle(),
              hintText: "100%",
              border: OutlineInputBorder(),
            )),
      )
    ]);
  }
}
