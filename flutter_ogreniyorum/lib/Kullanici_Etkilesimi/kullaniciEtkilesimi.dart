import 'package:flutter/material.dart';

class Kullanicietkilesimi extends StatefulWidget {
  const Kullanicietkilesimi({super.key});

  @override
  State<Kullanicietkilesimi> createState() => _KullanicietkilesimiState();
}

class _KullanicietkilesimiState extends State<Kullanicietkilesimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kullanici Etkilesimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){

            }, child: const Text("SnackBar")),
             ElevatedButton(onPressed: (){

            }, child: const Text("SnackBar (Ozellestirlmis)")),
             ElevatedButton(onPressed: (){

            }, child: const Text("Alert")),
             ElevatedButton(onPressed: (){

            }, child: const Text("Alert (Ozellestirilmis)")),
          ],
        ),
      ),
    );
  }
}