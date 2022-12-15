import 'package:flutter/material.dart';
import 'package:hm_by_digvijay/screens/homescreen/homescreen.dart';
import 'package:hm_by_digvijay/route.dart';
import 'package:hm_by_digvijay/screens/sectionscreen/section_screen.dart';

void main(List<String> args) {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "OpenSans",
      ),
      home: HomeScreen(),
      onGenerateRoute: (settings) => MyRoutes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
