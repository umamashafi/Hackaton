import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myapp/Screen/login.dart';
import 'package:myapp/Screen/order_Screen.dart';


class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
  }

  class _MenuPageState extends State<MenuPage> {
  @override
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            // toolbarHeight: 65,
            // elevation: 0,
             backgroundColor: Color.fromARGB(255, 226, 233, 226),
            leading: Image(image: AssetImage('assets/Logo.png'),
            //color: Color.fromARGB(255, 221, 230, 221), 
            height: 110.0, width: 50.0),
            title: Text(
              "Plantify",
              style: TextStyle(color: Color.fromARGB(255, 120, 131, 119), fontWeight: FontWeight.bold),
            ),
        ),
      backgroundColor: Colors.green,
        body:
        Center(
          
          child:Column(
          children:[
             SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.shop_2_rounded),
              Text(" Shop",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900,color: Colors.white)),
              ]
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Icon(Icons.video_collection_outlined),
              Text("  Plant Care",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900,color: Colors.white)),
            ],),
            SizedBox(height: 15,),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Icon(Icons.person_add_alt_1_sharp),
              Text("  Community",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900,color: Colors.white)),
            ],),
            SizedBox(height: 15,),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,children: [
              Icon(Icons.account_box_sharp),
              Text("  My Account",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900,color: Colors.white)),
            ],),
            SizedBox(height: 15,),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Icon(Icons.track_changes_outlined),
              Text("  Trace order",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900,color: Colors.white)),
            ],),
            
            SizedBox(height: 55,),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
             Text("Get The Dirt",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900,color: Colors.white)),
            ],),

            SizedBox(height: 20,),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                     backgroundColor: Color.fromARGB(255, 247, 255, 246),
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const OrderScreen())));
                },
                child: Text("Enter Your Email",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900,color: Color.fromARGB(255, 82, 182, 85))),
              ),
            ],),
// text button in faq
            SizedBox(height: 20,),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              TextButton(
                onPressed:(){
                  
                },
                child: Text("   FAQ  ",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900,color: Colors.white)),
              ),
            ],),
// text button in about
             SizedBox(height: 20,),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              TextButton(
                onPressed:(){
                  
                },
                child: Text("  ABOUT US ",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900,color: Colors.white)),

              ),
            ],),
// text button in contct
             SizedBox(height: 20,),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              TextButton(
                onPressed:(){
                  
                },
                child: Text(" CONTACT",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900,color: Colors.white),
              ),
            ),
        
            
          ]
          ) ,
          ]
          )
        ),
      );
          
  }
  }
    