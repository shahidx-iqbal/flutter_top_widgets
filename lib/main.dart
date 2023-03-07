import 'package:flutter/material.dart';
import 'package:flutter_top_widgets/home_screen.dart';
import 'package:flutter_top_widgets/wrap_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  WrapWidget(),
    );
  }
}
