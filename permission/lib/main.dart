import 'package:flutter/material.dart';
import 'package:permission/demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"FlutterDemo",
    home:Demo(),
    );
  }
}
