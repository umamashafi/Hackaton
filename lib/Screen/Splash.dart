import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/Screen/login.dart';


class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
  }

  class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 30);
      return Timer(duration, () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) {
            return const LoginPage();
          }),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        //backgroundColor: const Color.fromARGB(149, 208, 211, 181),
        body: 
        Stack(
          children: [
          
          Padding(
        padding: EdgeInsets.only(left: 50),),
      Positioned(
        child: Image.asset(
          
          "assets/Rectangle 118.png",width: 500,height: 420,fit: BoxFit.fill,),
      ),
     Image.asset("assets/Vector.png",width: 500,height: 420,),
      Padding(
        padding: EdgeInsets.all(100),
        child: Image.asset( "assets/Logo.png", color: Color.fromARGB(255, 221, 230, 221), alignment: Alignment.topLeft, height: 250, width: 250,),
      ),
      // Padding(
      //   padding: EdgeInsets.symmetric(vertical: 240),
      //   child: Align(
      //       alignment: Alignment.bottomCenter,
      //       child: Image.asset(
      //         "assets/Logo.png",
      //         width: MediaQuery.of(context).size.width,
      //         height: MediaQuery.of(context).size.height,
      //       )),
      // ),
      Padding(
          padding: EdgeInsets.only(left: 50, top: 450.0),
          child: Text(
              "GET READY \nBE HIGYENIC",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900,color: Color.fromARGB(255, 31, 117, 24),)
              )
              ),
              Padding(
          padding: EdgeInsets.only(left:50,top:495.0),
          child: Text(
              "Jelajahi AiLearn untuk menambah kemampuanmu\ndalam mengoperasikan Adobe Illustrator",style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w900,color: Color.fromARGB(255, 31, 117, 24),)
          ) ),
       
      Padding(
        padding: const EdgeInsets.only( top: 550.0,left: 150),
        child: Align(alignment: Alignment.topLeft,
          child: ElevatedButton(
              style: TextButton.styleFrom(backgroundColor:Color.fromARGB(255, 31, 117, 24),),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text("   MASUK  ",style:TextStyle(
                  fontSize: 15)),),
        ),
      )
    ]));
  }
}
  

          
    