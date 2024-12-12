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
              ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: const Text("Silmek istiyormusunuz ? "),
              
              action: SnackBarAction(label: "Evet", onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Silindi"),
              action: SnackBarAction(label: "Tamam", onPressed: (){}),
                ),

                );
              
              }),

              ),
              
              );


            }, child: const Text("SnackBar")),
             ElevatedButton(onPressed: (){

              
               ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: const Text("Silmek istiyormusunuz ? ",style: TextStyle(color: Colors.blueAccent),),
              backgroundColor: Colors.white,
              action: SnackBarAction(label: "Evet", onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Silindi"),
              action: SnackBarAction(label: "Tamam", onPressed: (){}),
                ),

                );
              
              }),

              ),
              
              );

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