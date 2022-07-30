import 'package:flutter/material.dart';
import 'package:flutter_workshop_depok/ui/pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter E-Commerce',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'DMSans',
      ),
      home: const MyHomePage(),
    );
  }
}
