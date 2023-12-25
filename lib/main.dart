import 'package:appbar_bottombar/widgets/Bottom%20Naviagtion%20Bar/bottom_nav_bar.dart';
import 'package:appbar_bottombar/tabs/calls_tab.dart';
import 'package:appbar_bottombar/tabs/chat_tab.dart';
import 'package:appbar_bottombar/widgets/Dialog%20Box/Dialog_Box.dart';
import 'package:appbar_bottombar/widgets/Navigation%20Rail/navigation_rail.dart';
import 'package:appbar_bottombar/tabs/status_tab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DialogBox(),
    );
  }
}






