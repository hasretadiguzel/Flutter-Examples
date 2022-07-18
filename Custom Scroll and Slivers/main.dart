import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scrolls_app/custom_scroll_ve_slivers.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Dersleri",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primarySwatch: Colors.orange, brightness: Brightness.dark), //gecemodu
    home: Scaffold(
      body: CollapsableToolbarOrnek(),
    ),
  ));
}
