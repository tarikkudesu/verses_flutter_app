import 'package:flutter/material.dart';
import 'package:verses/home/home.dart';
import 'package:verses/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
      home: HomePage(),
      title: 'Verses',
    );
  }
}
