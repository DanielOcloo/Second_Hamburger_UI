import 'welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home page',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyWelcomePage(title: 'Welcome page'),
    );
  }
}
