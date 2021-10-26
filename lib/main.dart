import 'package:flutter/material.dart';
import 'package:flutter_state_intro/cart.dart';
import 'package:flutter_state_intro/catalog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/cart',
      routes: {
        '/cart': (context) => const Cart(),
        '/catalog': (context) => const Catalog(),
      },
    );
  }
}
