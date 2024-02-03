import 'package:flutter/material.dart';

import 'home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff5E30F2),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          shadowColor: Colors.black,
          color: Color(0xff5E30F2),
        ),
      ),
      home: const HomePage(),
    );
  }
}
