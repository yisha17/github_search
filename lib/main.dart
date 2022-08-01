import 'package:flutter/material.dart';
import 'package:github_search/pages/searching_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SpaceMono',
        scaffoldBackgroundColor: const Color(0x001E2A47),
        primarySwatch: Colors.blue,
      ),
      home:const SearchPage(),
    );
  }
}



