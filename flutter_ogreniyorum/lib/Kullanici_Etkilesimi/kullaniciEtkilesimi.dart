import 'package:flutter/material.dart';

class Kullanicietkilesimi extends StatefulWidget {
  const Kullanicietkilesimi({super.key});

  @override
  State<Kullanicietkilesimi> createState() => _KullanicietkilesimiState();
}

class _KullanicietkilesimiState extends State<Kullanicietkilesimi> {
  var tfControl = TextEditingController();
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
              showDialog(
                context: context, 
                builder: (BuildContext context){
                  return AlertDialog(
                    title: const Text("Baslik"),
                    content: const Text("Icerik"),

                    actions: [
                      TextButton(onPressed: (){
                      Navigator.pop(context);

                      }, child: const Text("Tamam"),
                      
                      ),
                    ],
                  );
                }
                
                );
            }, child: const Text("Alert")),
             ElevatedButton(onPressed: (){

               showDialog(
                context: context, 
                builder: (BuildContext context){
                  return AlertDialog(
                    title: const Text("Kayit Islemi"),
                    content: TextField(controller: tfControl,decoration: const InputDecoration(hintText: "Veri"),),
                    backgroundColor: Colors.grey,

                    actions: [
                      TextButton(onPressed: (){
                      Navigator.pop(context);
                      print("Alinan veri : ${tfControl.text}");
                      tfControl.text = "";
                      }, child: const Text("Tamam"),
                      
                      ),
                    ],
                  );
                }
                
                );

            }, child: const Text("Alert (Ozellestirilmis)")),
          ],
        ),
      ),
    );
  }
}