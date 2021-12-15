import 'package:flutter/material.dart';
import 'package:result_ui/interface.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: TextStyle(color: Colors.white),
        child: MaterialApp(
          home: Homepage(),
        ));
  }
}
