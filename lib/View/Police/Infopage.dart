import 'package:flutter/material.dart';
import 'package:myapp/View/Ambulance/ShowStatus.dart';
import 'package:myapp/Controller/Map.dart';
import 'package:myapp/View/Police/LocationPolice.dart';
import 'package:myapp/View/Police/call.dart';
class PoliceInfo extends StatefulWidget { 
  const PoliceInfo ({super.key});
  @override
  State<PoliceInfo> createState() => _PoliceInfoState();
}
class _PoliceInfoState extends State<PoliceInfo> {
  @override
  Widget build(BuildContext context)  {  
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 235, 234),
          appBar: AppBar(
            toolbarHeight: 65,
            elevation: 0,
          backgroundColor: const Color.fromARGB(149, 208, 211, 181),
           leading: Image(image: AssetImage('assets/HeartLogo.PNG'),height: 110.0, width: 60.0),
            title: Text(
              "SQuiP",
              style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold, fontSize:20),
            ),
            iconTheme: IconThemeData(color: Color.fromARGB(255, 184, 224, 218)),
            actions: <Widget>[
                IconButton(
                icon: Icon(
                  Icons.call,
                  color: Colors.orangeAccent,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => (PCall())));
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.notification_add,
                  color: Colors.orangeAccent,
                ),
                onPressed: () {
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.orangeAccent,
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
          ),
          drawer: Drawer(
              backgroundColor: Colors.orangeAccent,
              child: ListView(children: [
                Padding(padding: EdgeInsets.all(20.0)),
                ListTile(
                  leading: Icon(Icons.local_hospital_sharp, color: Color.fromARGB(255, 69, 142, 211), ),
                  title: Text(
                    'Ambulance Service',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.help_center_sharp, color: Color.fromARGB(255, 20, 66, 16)),
                  title: Text('Police Service',
                      style: TextStyle(color: Colors.white)),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.share, color: Colors.white),
                  title: Text('Fire Bridget',
                      style: TextStyle(color: Colors.white)),
                  onTap: () => null,
                ),
                Divider(),
                ListTile(
                  title:
                      Text('Exit', style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.exit_to_app, color: Colors.white),
                  onTap: () => null,
                ),
              ])),
          body: ListView (children: [Padding(padding: const EdgeInsets.fromLTRB(40, 3, 20, 20),
          child:Container(child: Image(image: AssetImage("assets/Policeimage.jpg"),
          height: 150,
          width: 30,
          ),
          ),
          ),
          Column(
            children:[
              Text("Police Service Required in Some Imformation",style:TextStyle(color: Colors.orangeAccent,fontFamily: 'Bold',fontSize: 20,),
              ),
              SizedBox(
              height: 10,
            ),
           Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: "Which Type of Your Is Problem"),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: "  Risala"),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    labelText: "Enter Address",
                  ),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: "Cell Address"),
                ),
              ),
            ),

            // TextButton.icon(
            //     onPressed: (() {}),
            //     icon: Icon(Icons.check_box_outline_blank_outlined),
            //     label: Text('Remember me')),
            // SizedBox(
            //   height: 15,
            // ),

            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(9.0)),
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent, //<-- SEE HERE
                ),
                onPressed: () { Navigator.push(context,
                      MaterialPageRoute(builder: (context) => (PoliceMap ()))); },
                child: Text(" Submit  "),
              ),
            )
            
              ]
              
          )
          ],
          ), 
     
    ); 
        
  }
}
