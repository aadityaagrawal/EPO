import 'package:flutter/material.dart';
import './Screen/screen.dart';
import './Config/config.dart';

void main() {
  runApp(const MyApp());  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
