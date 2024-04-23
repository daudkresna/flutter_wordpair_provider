// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_pair_baru/providers/favorite_provider.dart';
import 'package:word_pair_baru/screen/home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => WordModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));
  }
}
