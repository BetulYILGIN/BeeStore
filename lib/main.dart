import 'package:flutter/material.dart';

void main(){
  print("merhaba");

  String name="betül";
  runApp(
    
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("HOME"),
          centerTitle: false,
          actions: [
            IconButton(icon: const Icon(Icons.notifications), onPressed: (){}),
            IconButton(icon: const Icon(Icons.shopping_cart), onPressed: (){})
          ],
        ),
        body:Center(child: Text('Merhaba $name nasılsın?'),
        ),
        drawer: const Drawer(),
      ),
    ),
  );

}
