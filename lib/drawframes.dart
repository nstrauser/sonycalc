import 'package:flutter/material.dart';

class DrawFrames extends StatefulWidget {
  @override
  _DrawFramesState createState() => _DrawFramesState();
}

class _DrawFramesState extends State<DrawFrames> {
final _frameW = 0.0, _frameH = 0.0, _frameX = 0.0, _frameY = 0.0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(children: <Widget>[
          Container(
            width: 640.0,
            height: 460.0,
            color: Colors.grey[700],
          ),
          Positioned(
            width: _frameW,
            height: _frameH,
            left: _frameX,
            top: _frameY,
            child: Container(
                decoration: BoxDecoration(
              border: Border.all(color: Color(0xffd9ceb0), width: 1.5),
              //child: Text("My Awesome Border"),
            )),
          ),
        ]),
      ],
    );
  }
}
