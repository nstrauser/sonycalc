import 'package:flutter/material.dart';

class CameraSensor extends StatefulWidget {
  @override
  _CameraSensorState createState() => _CameraSensorState();
}

class _CameraSensorState extends State<CameraSensor> {
  var sensorValue = '6K 3:2';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 21.0, right: 5.0),
              child: Text(
            "Camera Sensor",
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.body1,
          )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            padding: EdgeInsets.only(left: 5.0, right: 1.0),
            width: 195.0,
            height: 30.0,
            color: Color(0xff85a2a6),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: sensorValue,
                icon: Icon(Icons.arrow_drop_down_circle),
                iconSize: 18,
                elevation: 16,
                style: Theme.of(context).textTheme.body2,
                onChanged: (String newValue) {
                  setState(() {
                    sensorValue = newValue;
                  });
                },
                items: <String>[
                  '6K 3:2',
                  '6K 2.39:1',
                  '6K 17:9',
                  '6K 1.85:1',
                  '6K 1.66:1',
                  '5.7K 16:9',
                  '4K 4:3',
                  '4K 2.39:1',
                  '4K 17:9',
                  '3.8K 16:9',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
