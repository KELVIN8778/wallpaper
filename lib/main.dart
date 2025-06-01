import 'package:flutter/material.dart';
import 'package:sukuna_wallpapers/views/screens/category.dart';
import 'package:sukuna_wallpapers/views/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallpaper 4k',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Category(),
    );
  }
}
