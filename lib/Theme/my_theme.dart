import 'package:flutter/material.dart';
import 'package:github_search/colors/colors.dart';

class MyTheme extends ChangeNotifier {
  static String fontFamily = 'SpaceMono';
  static final TextTheme _textTheme = TextTheme(
    bodyText1: TextStyle(
      fontFamily: fontFamily,
      fontSize: 15,
    ),
    headline1: const TextStyle(
        fontFamily: 'SpaceMono', fontSize: 26, fontWeight: FontWeight.bold),
    headline2: const TextStyle(
        fontFamily: 'SpaceMono', fontSize: 22, fontWeight: FontWeight.bold),
    headline3: const TextStyle(
        fontFamily: 'SpaceMono', fontSize: 16, fontWeight: FontWeight.normal),
    headline4: const TextStyle(
        fontFamily: 'SpaceMono', fontSize: 13, fontWeight: FontWeight.normal),
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: _textTheme,
    backgroundColor: MyColors.darkBackground,
    buttonTheme:ButtonThemeData(
       buttonColor:MyColors.searchButtonColor,
       minWidth: 88,
       height : 50,
    ),
  );

  static ThemeData lightTheme = ThemeData(
    textTheme: _textTheme,
  );

  
}
