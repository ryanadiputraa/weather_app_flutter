import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/screens/weather.dart';
import 'package:weather_app/screens/weather_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const Weather());
  }
}
