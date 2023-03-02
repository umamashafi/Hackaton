import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/Screen/Signup.dart';
import 'package:myapp/Screen/home_Screen.dart';
import 'package:myapp/Screen/Signup.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
       Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //  Positioned(
            //     top: 40,
            //     left: 290,
            //     height: 50,
        
               
            //     child: Container(
            //       child: Image.asset("assets/EndLogo.png"),
            //     ),
         // ),
          Container(
            child: Text("Order",style: TextStyle(fontSize:26,fontWeight: FontWeight.bold,color: Color.fromRGBO(13, 152, 106, 1)),),
          ),
          SizedBox(height: 15,),
          Container(
            child: Text("Received",style: TextStyle(fontSize:26,fontWeight: FontWeight.bold,color: Color.fromRGBO(13, 152, 106, 1))),
          ),
          SizedBox(height: 15,),
          Container(
            child: Text("Order id: 0928474921893",style: TextStyle(fontSize:16))
             
          ),
          //Image.asset("assets/EndLogo.png"),
          Positioned(
                top: 20,
                left: 20,
                height: 10,
                width: 30,
                child: Container(
                  child: Image.asset("assets/EndLogo.png"),
               // ),
          ),
          ),
          SizedBox(height: 20,),
         ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 20, 100, 23),
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
                onPressed: () {},
                child: Text("  KARIM LOGOUT  "),
              ),
        ]),

      ),
    );
  }
}