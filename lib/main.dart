import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(

       appBar: AppBar(
         backgroundColor: Colors.lightGreen.shade400,
         title:const Text("List"),
         actions: <Widget>[
           IconButton(icon: const Icon(Icons.search), onPressed: () =>debugPrint("item searched"),),
           IconButton(icon:const Icon(Icons.add_box),onPressed: ()=>debugPrint("Member added"),),
           IconButton(icon:const Icon(Icons.add_call),onPressed: ()=>debugPrint("Select Member for call"),),
         ],
       ),

       drawer: Drawer(
         child: ListView(
           children: <Widget>[
             const DrawerHeader(decoration: BoxDecoration(
                 color: Colors.lightGreen,
               ),
               child: Text("List Setting"),
            
             ),

             ListTile(
               title: const Text("Active Member"),
               onTap: ()=>debugPrint("Active Member Selected"),
             ),

             ListTile(
               title: const Text('Lazy Member'),
               onTap: ()=>debugPrint("Lazy Member Selected"),
             ),


           ],
         ),
       ),

       backgroundColor: Colors.white,

     ),

    ));
