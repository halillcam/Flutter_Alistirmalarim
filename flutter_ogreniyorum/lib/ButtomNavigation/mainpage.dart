import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/ButtomNavigation/sayfa1.dart';
import 'package:flutter_ogreniyorum/ButtomNavigation/sayfa2.dart';
import 'package:flutter_ogreniyorum/ButtomNavigation/sayfa3.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int secilenIndex = 0;
  var Sayfalar = [const Sayfa1(),const Sayfa2(),const Sayfa3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom navigation Yapisi"),
      backgroundColor: Colors.deepPurple,
      ),
      
      body: Sayfalar[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.looks_one_outlined),label: "Sayfa 1"),
        BottomNavigationBarItem(icon: Icon(Icons.looks_two_outlined),label: "Sayfa 2"),
        BottomNavigationBarItem(icon: Icon(Icons.looks_3_outlined),label: "Sayfa 3"),
      
      ],
      currentIndex: secilenIndex,
      backgroundColor: Colors.deepPurple,
      selectedItemColor: Colors.red,
      onTap: (indeks){
        setState(() {
          secilenIndex = indeks;
        });
      },
      ),
    );
  }
}