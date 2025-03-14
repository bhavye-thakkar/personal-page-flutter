import 'package:flutter/material.dart';
import 'package:flutter_application_cloning01/cloningui.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData(
        brightness: Brightness.dark, primaryColor: Colors.deepPurple),
      home:  CloningUi01(),
    );

    
  }
}