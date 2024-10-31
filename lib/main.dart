import 'package:currency_converter/currency_converter_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cc_cupertino.dart';

void main() {
  runApp(const MyApp());
}

//Material Design
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CurrencyConverter(),
    );
  }
}

//Cupertino Design
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home:  CurrencyConverterCupertino(),
    );
  }
}



