import "package:flutter/material.dart";

ThemeData basicTheme(){
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      headline: base.headline.copyWith( // orange
        fontFamily: 'Roboto',
        fontSize: 28.0,
        color: Color(0xfff15a24),
      ),
      title: base.title.copyWith( // orange 
        fontFamily: 'Roboto',
        fontSize: 20.0,
        color: Color(0xfff15a24),
      ),
      body1: base.body1.copyWith( // orange
        fontFamily: 'Roboto',
        fontSize: 15.0,
        color: Color(0xfff15a24),
      ),
      body2: base.body2.copyWith( // black
        fontSize: 16.0,
        color: Colors.black,
      ),
      overline: base.overline.copyWith( // light blue
        fontFamily: 'Roboto',
        fontSize: 13.0,
        color: Color(0xff85a2a6),
      ),
      subtitle: base.subtitle.copyWith( // Off White
        fontFamily: 'Roboto',
        fontSize: 20,
        color: Color(0xffd9ceb0),
      ),
          display2: base.display2.copyWith( // Off White
        fontFamily: 'Roboto',
        fontSize: 12.0,
        color: Color(0xffd9ceb0),
      ),
      display3: base.display3.copyWith( // Off White
        fontFamily: 'Roboto',
        fontSize: 15.0,
        color: Color(0xffd9ceb0),
      ),
      display4: base.display4.copyWith( // light blue
        fontFamily: 'Roboto',
        fontSize: 28.0,
        color: Color(0xff85a2a6),
      ),
    );
  }
  final ThemeData base=ThemeData.dark();
  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: Color(0xff85a2a6),
  );
}