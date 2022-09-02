import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/home.dart';
import 'package:instagram_ui/pages/searchpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        '/': (context) => HomePage(),
        '/search': (context) => SearchPage(),
      },
    );
  }
}
