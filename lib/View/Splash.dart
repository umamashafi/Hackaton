import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/View/login.dart';



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
    var duration = const Duration(seconds: 7);
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
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        body: 
         Center( 
          child: Column(
            children:[
              Padding(padding: EdgeInsets.all(75)),
              Image.asset("assets/Logo1.PNG",width: 570,height: 370,),

              Padding(padding: EdgeInsets.all(6)),
            //   Text("SAFE & QUICK \n   PAKISTAN",
            //   style: TextStyle(
            //             color: Colors.orangeAccent,
            //             fontSize: 30,
            //             fontWeight: FontWeight.bold
            //  )  
         // )  
            ]
          )

               
          )  
      );
      
  }
  }
  
        
//         Stack(
//           children: [
          
//           Padding(
//         padding: EdgeInsets.only(left: 50),),

//       Positioned(
//         child: Image.asset(
          
//           "assets/Rectangle 118.png",width: 500,height: 420,fit: BoxFit.fill,),
//       ),
//      Image.asset("assets/Vector.png",width: 500,height: 420,),
//       Padding(
//         padding: EdgeInsets.all(100),
//         child: Image.asset( "assets/Logo.png", color: Color.fromARGB(255, 221, 230, 221), alignment: Alignment.topLeft, height: 250, width: 250,),
//       ),
//       // Padding(
//       //   padding: EdgeInsets.symmetric(vertical: 240),
//       //   child: Align(
//       //       alignment: Alignment.bottomCenter,
//       //       child: Image.asset(
//       //         "assets/Logo.png",
//       //         width: MediaQuery.of(context).size.width,z
//       //         height: MediaQuery.of(context).size.height,
//       //       )),
//       // ),
//       Padding(
//           padding: EdgeInsets.only(left: 50, top: 450.0),
//           child: Text(
//               "GET READY \nBE HIGYENIC",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900,color: Color.fromARGB(255, 31, 117, 24),)
//               )
//               ),
//               Padding(
//           padding: EdgeInsets.only(left:50,top:495.0),
//           child: Text(
//               "Jelajahi AiLearn untuk menambah kemampuanmu\ndalam mengoperasikan Adobe Illustrator",style: TextStyle(
//                 fontSize: 14, fontWeight: FontWeight.w900,color: Color.fromARGB(255, 31, 117, 24),)
//           ) ),
       
//       Padding(
//         padding: const EdgeInsets.only( top: 550.0,left: 150),
//         child: Align(alignment: Alignment.topLeft,
//           child: ElevatedButton(
//               style: TextButton.styleFrom(backgroundColor:Color.fromARGB(255, 31, 117, 24),),
//               onPressed: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => LoginPage()));
//               },
//               child: Text("   LeTSSTART  ",style:TextStyle(
//                   fontSize: 15)),),
//         ),
//       )
//     ]));
//   }
// }
  
  