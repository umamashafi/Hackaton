

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';



_callNumber() async{
  const number = '1020'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}
class ACall extends StatefulWidget { 
  const ACall ({super.key});
  @override
  State<ACall> createState() => _CallState();
}
class _CallState extends State<ACall> {
  @override
  Widget build(BuildContext context)  {  
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 235, 234),
      appBar: AppBar(
            toolbarHeight: 65,
            elevation: 0,
          backgroundColor: const Color.fromARGB(149, 208, 211, 181),
        
            title: Text( "Call",
              style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold, fontSize:20),
            ),
          ),
          body: Center(
     // child: buildButton(
      //)
      
      child: ElevatedButton(
        onPressed: _callNumber,
        child: Text("Call"),
      ),
          ),
  
  );
  Widget build(buildButton)  {  
    final number='1020';
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
         backgroundColor: Colors.orangeAccent, 
        // padding: EdgeInsets.symmetric(horizontal: 60, vertical:20),
        // textStyle: TextStyle(fontSize: 24)
      ),
      child: Text ("Ambulance Call"),
      onPressed:() async{

      launch('tel://$_callNumber(number)');

        await FlutterPhoneDirectCaller.callNumber(number);
      }
    );
  }
}
}