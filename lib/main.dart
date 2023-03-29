import 'package:flutter/material.dart';
import './screens/Bottom_Bar.dart';

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

       // bottomNavigationBar: BottomNavigationBar(
       //   backgroundColor: Colors.lightGreen.shade400,
       //   items: const [
       //     BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet),label:("Wallet"),),
       //     BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label:("Cart"),),
       //     BottomNavigationBarItem(icon: Icon(Icons.account_circle),label:("Profile"),)
       //
       //   ],
       // ),

       body: Container(
         alignment: Alignment.center,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
            const Text("Developers",style: TextStyle(fontSize: 19.0,fontWeight: FontWeight.bold,
             color: Colors.black
             ),
             ),

             InkWell(
               child: const Text("Proceed Payment"),
               onTap: ()=>debugPrint("Payment Proceeded"),
             )
           ],
         ),
       ),

       floatingActionButton: FloatingActionButton(onPressed:()=>debugPrint("Tapped"),
       backgroundColor: Colors.lightGreen.shade400,
         tooltip: 'Cart',
         child: const Icon(Icons.add_shopping_cart),
       ),
       bottomNavigationBar: BottomBar(),
       floatingActionButtonLocation:  FloatingActionButtonLocation.centerDocked,
     ),

    ));
