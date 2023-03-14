import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';



_callNumber() async{
  const number = '1020'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}
class PCall extends StatefulWidget { 
  const PCall ({super.key});
  @override
  State<PCall> createState() => _CallState();
}
class _CallState extends State<PCall> {
  @override
  Widget build(BuildContext context)  {  
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 235, 234),
           appBar: AppBar(
            toolbarHeight: 65,
            elevation: 0,
          backgroundColor: const Color.fromARGB(149, 208, 211, 181),
        
            title: Text( "Police Calling ",
              style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold, fontSize:20),
            ),
          ),
          body: Center(
      child: ElevatedButton(
        onPressed: _callNumber,
        child: Text("Call"),
      ),
          ),
  
  );
  Widget build(buildButton)  {  
    final number='15';
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