import 'package:flutter/material.dart';
import 'package:github_search/pages/searching_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child){
      return  MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'SpaceMono',
          scaffoldBackgroundColor: const Color(0x001E2A47),
          primarySwatch: Colors.blue,
        ),
        home:const SearchPage(),
      );
      },
      designSize: const Size(360, 690),
    );
  }
}



