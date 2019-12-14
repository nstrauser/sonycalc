import 'package:flutter/material.dart';
import 'package:sonycalc/sensorreso.dart';
import 'package:sonycalc/theme.dart';
import 'package:sonycalc/camerasensor.dart';
import 'package:sonycalc/userframeline.dart';
import 'package:sonycalc/userframereso.dart';
import 'package:sonycalc/userratio.dart';
import 'package:sonycalc/lensfactor.dart';
import 'package:sonycalc/scaleframe.dart';
import 'package:sonycalc/drawframes.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Data Calculator",
      theme: basicTheme(),
      home: PageOne(),
    );
  }
}

class PageOne extends StatefulWidget {
  PageOne({Key key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  var lensFactorValue = 'x1.0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Text('Sony Venice ',
                  style: Theme.of(context).textTheme.headline,
                  textAlign: TextAlign.center),
              Text(
                ' |',
                style: Theme.of(context).textTheme.display4,
              ),
              Text(' User Frame Line Tool',
                  style: Theme.of(context).textTheme.headline,
                  textAlign: TextAlign.center),
            ],
          ),
          backgroundColor: Colors.black87,
          elevation: 4.0,
        ),
        body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 350.0,
                height: 460.0,
                child: Container(
                  //color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(child: CameraSensor()),
                      Container(child: UserRatio()),
                      Container(
                        child: LensFactor(),
                      ),
                      Container(
                        child: ScaleFrame(),
                      ),
                      Container(
                        margin: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Color(0xff85a2a6),
                          height: 2.0,
                        ),
                      ),
                      Container(
                        child: SensorReso(),
                      ),
                      Container(
                        child: UserFrameReso(),
                      ),
                      Container(child: UserFrameLine()),
                      Container(
                        margin: EdgeInsets.only(top: 10.0, left: 15.0),
                        child: Text(
                        "* Use these horizontal vertical numbers to create a custom user frame line.",
                        style: Theme.of(context).textTheme.display2,
                      )),
                    ],
                  ),
                ),
              ),
              Container(
                  child: Column(
                children: <Widget>[
                  Container(child: DrawFrames()),
                ],
              )),
            ]));
  }
}
