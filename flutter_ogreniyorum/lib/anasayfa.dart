import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/colors.dart';


class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Merhaba Projem",style:TextStyle(fontFamily: "Alex",color:yaziRengi,fontSize: 24),),
        backgroundColor: mainColor,
        centerTitle: true,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello",style: TextStyle(color : yaziRengi1,fontFamily: "caramel",fontSize: 35),),
              const Padding(padding: EdgeInsets.all(15)),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: mainColor),
                onPressed: (){}, child: Text("Hello button",style: TextStyle(color: yaziRengi),)),
                Padding(padding: const EdgeInsets.all(16),

                  child: Container(width: 180,height: 150,
                  child: Image.asset("resimler/pizza.png"),
                  )
                  ,
                )
                

            ],
          ),
        ),
      
    );
         
  }
}