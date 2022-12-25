import 'package:flutter/material.dart';
import 'package:online/onboard_screen/onboard_screen.dart';
import 'package:sizer/sizer.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (BuildContext context, Orientation orientation,
                DeviceType deviceType) =>
            MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  textTheme: const TextTheme(
                      headline1: TextStyle(
                          fontFamily: 'Decker',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      headline2: TextStyle(
                          fontFamily: 'Decker',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      headline3: TextStyle(
                          fontFamily: 'Decker',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      subtitle2: TextStyle(
                          fontFamily: 'Decker',
                          fontSize: 10,
                          color: Colors.white70),
                      bodyText1: TextStyle(
                          fontFamily: 'Decker',
                          fontSize: 10,
                          color: Colors.white54))),
              themeMode: ThemeMode.dark,
              darkTheme: ThemeData(brightness: Brightness.dark),
              title: 'An Innovative App',
              home: const OnBoardScreen(),
            ));
  }
}
