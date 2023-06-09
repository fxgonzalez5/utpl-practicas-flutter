import 'package:flutter/material.dart';

import 'package:practicas/screens/counter_page.dart';
import 'package:practicas/screens/license_screen.dart';
import 'package:practicas/screens/menu_page.dart';
import 'package:practicas/screens/news_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTPL+',
      home: const MenuPage(),
      routes: {
        '/contador': (BuildContext context) => const CounterPage(),
        '/news_page': (BuildContext context) => const NewsPage(),
        '/carnet': (BuildContext context) => const LicenseScreen(),
      },
    );
  }
}
