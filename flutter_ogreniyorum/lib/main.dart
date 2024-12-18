import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/ButtomNavigation/mainpage.dart';
import 'package:flutter_ogreniyorum/Kullanici_Etkilesimi/kullaniciEtkilesimi.dart';
import 'package:flutter_ogreniyorum/anasayfa.dart';
import 'package:flutter_ogreniyorum/anasayfa2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tekrarlarim',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Kullanicietkilesimi(),
    );
  }
}

