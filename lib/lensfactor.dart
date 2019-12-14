import 'package:flutter/material.dart';

class LensFactor extends StatefulWidget {
  @override
  _LensFactorState createState() => _LensFactorState();
}

class _LensFactorState extends State<LensFactor> {
  var lensFactorValue = 'x1.0';
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      SizedBox(
        width: 125.0,
        child: Container(
            margin: EdgeInsets.only(left: 15.0),
            child: Text(
              "Lens Factor",
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.body1,
            )),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0),
        padding: EdgeInsets.only(left: 5.0, right: 1.0),
        width: 195.0,
        height: 30.0,
        color: Color(0xff85a2a6),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: lensFactorValue,
            icon: Icon(Icons.arrow_drop_down_circle),
            iconSize: 18,
            elevation: 16,
            style: Theme.of(context).textTheme.body2,
            onChanged: (String newValue) {
              setState(() {
                lensFactorValue = newValue;
              });
            },
            items: <String>[
              'x1.0',
              'x1.3',
              'x1.5',
              'x1.8',
              'x2.0',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    ]);
  }
}
