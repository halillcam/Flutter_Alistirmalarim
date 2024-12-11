import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/colors.dart';

class Anasayfa2 extends StatefulWidget {
  const Anasayfa2({super.key});

  @override
  State<Anasayfa2> createState() => _Anasayfa2State();
}

class _Anasayfa2State extends State<Anasayfa2> {
  @override
  bool kontrol = false;
  String isim = "Halil";

  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar:AppBar(title: Text("Welcome to Filmexplore",style: TextStyle(color:yaziRengi),
      ),
      backgroundColor: mainColor,
      centerTitle: true,
        ),


        body:Center(
          child: Column(
            children: [
              Visibility(visible : kontrol,child: const Text("Hello"),
              ),
              Text(kontrol ? "Hello 2": "Güle güle",style: TextStyle(color: kontrol ? Colors.blue : Colors.red),),

              ElevatedButton(onPressed: (){
                setState(() {
                  kontrol = true;

                });
              }, 
              child: const Text("Tikla"),
              
              ),
              const Text("Durum 1 (true)"),

              ElevatedButton(onPressed: (){
                setState(() {
                  kontrol = false;
                  
                });
              }, 
              child: const Text("Tikla"),
            
              ),
              const Text("Durum 1 (false)"),

              ElevatedButton(onPressed: (){
              setState(() {
               isim = "Mehmet";
               
              
              });
              }, child: Text("Renk degistir"),
              ),
              Text(isim),
            ],

          
          ),

        ),

    );
  }
}