import 'package:flutter/material.dart';
import 'package:github_search/pages/searching_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SpaceMono',
        primarySwatch: Colors.blue,
      ),
      home:const SearchPage(),
    );
  }
}



