import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/Screen/menu.dart';
import 'package:myapp/Screen/order_Screen.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,


    child: Scaffold(
          backgroundColor: Color.fromARGB(255, 231, 235, 234),
          appBar: AppBar(
            toolbarHeight: 65,
            elevation: 0,
          backgroundColor: Color.fromARGB(255, 231, 235, 234),
           leading: Image(image: AssetImage('assets/Logo.png'),color: Colors.green, height: 110.0, width: 50.0),
          //backgroundColor: const Color.fromARGB(149, 208, 211, 181),
            title: Text(
              "Plantify",
              style: TextStyle(color: Color.fromARGB(255, 31, 117, 24), fontWeight: FontWeight.bold),
            ),
            iconTheme: IconThemeData(color: Color.fromARGB(255, 31, 117, 24)),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notification_add,
                  color: Color.fromARGB(255, 31, 117, 24),
                ),
                onPressed: () {
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Color.fromARGB(255, 31, 117, 24),
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
          ),
          drawer: Drawer(
              backgroundColor: Color.fromARGB(255, 31, 117, 24),
              child: ListView(children: [
                Padding(padding: EdgeInsets.all(20.0)),
                ListTile(
                  leading: Icon(
                    Icons.shop,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Shop',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.person, color: Color.fromARGB(255, 31, 117, 24)),
                  title: Text('PlantCare',
                      style: TextStyle(color: Colors.white)),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.share, color: Colors.white),
                  title: Text('Community',
                      style: TextStyle(color: Colors.white)),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.people, color: Colors.white),
                  title: Text('My Account',
                      style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.track_changes, color: Colors.white),
                  title: Text('Track Order',
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
          body: SingleChildScrollView(
            child: Stack(children: [
              Positioned(
                child: Image.asset(
                  "assets/home.jpeg",
                ),
                left: 65,
              ),
              SizedBox(
                height: 250,
              ),
              Container(
                  width: double.infinity,
                  height: 40,
                  margin: EdgeInsets.fromLTRB(30, 210, 40, 0),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200],
                  ),
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for Something',
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.qr_code_2_sharp)),
                    ),
                  )),
              Container(
                  width: double.infinity,
                  // height: 40,
                  margin: EdgeInsets.fromLTRB(20, 240, 5, 5),
                  padding: EdgeInsets.all(10),
                  child: TabBar(
                    indicatorColor: Colors.white,
                    isScrollable: true, //Change background color from here
                    tabs: [
                      Tab(
                          child: Text(
                        'Top Pick',
                        style: TextStyle(color: Colors.green),
                      )),
                      Tab(
                          child: Text('Indoor',
                              style: TextStyle(color: Colors.black))),
                      Tab(
                          child: Text('Outdoor',
                              style: TextStyle(color: Colors.black))),
                      Tab(
                          child: Text('Seeds',
                              style: TextStyle(color: Colors.black))),
                      Tab(
                          child: Text('Planters',
                              style: TextStyle(color: Colors.black))),
                    ],
                  )),
                SizedBox(height:20),
              Container(
                // height: 40,
                margin: EdgeInsets.fromLTRB(100, 300, 0, 0),
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/Container 1.png"),
              ),
              Positioned(
                top: 290,
                left: 100,
                height: 230,
                width: 230,
                child: Container(
                  child: Image.asset("assets/Vector.png"),
                ),
              ),
              Positioned(
                  top: 280,
                  left: 280,
                  height: 180,
                  width: 200,
                  child: Image.asset( "assets/Plant1.png",
                  )),
              Positioned(top: 350, left: 150, child: Text("Air Purifier")),
              Positioned(
                  top: 380,
                  left: 150,
                  child: Text(
                    "Peperomia",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  )),
              Positioned(
                top: 420,
                left: 150,
                child: Container(
                    child: Text(
                  " Rs500",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
              ),
              Positioned(
                top: 420,
                left: 250,
                child: Container(
                  child: Image.asset("assets/heart.png"),
                ),
              ),
              Positioned(
                top: 410,
                left: 290,
                child: Container(
                  child: Image.asset("assets/Shop.png"),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(100, 520, 0, 0),
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/Rectangle 28.png"),
              ),
              Positioned(
                top: 500,
                left: 100,
                height: 260, //////
                width: 280,
                child: Container(
                  child: Image.asset("assets/Container 3.png"),
                ),
              ),
              Positioned(
                  top: 490,
                  left: 280,
                  height: 190,
                  width: 200,
                  child: Image.asset(
                    "assets/Plant2.png",
                  )),
              Positioned(top: 580, left: 150, child: Text("Air Purifier")),
              Positioned(
                  top: 610,
                  left: 150,
                  child: Text(
                    "Watermelon..",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  )),
              Positioned(
                top: 650,
                left: 150,
                child: Container(
                    child: Text(
                  " Rs500",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
              ),
              Positioned(
                top: 650,
                left: 250,
                child: Container(
                  child: Image.asset("assets/heart.png"),
                ),
              ),
              Positioned(
                top: 640,
                left: 290,
                child: Container(
                  child: Image.asset("assets/Shop.png"),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(100, 720, 0, 0),
                padding: EdgeInsets.all(12),////
                child: Image.asset("assets/Container 3.png"),
              ),
              Positioned(
                  top: 770,
                  left: 320,
                  height: 120,
                  width: 120,
                  child: Image.asset(
                    "assets/Logo.png",
                  )),
              Positioned(
                  top: 760,
                  left: 150,
                  child: Text(
                    "Invite a Friend and \nearn Plantify rewards",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
              Positioned(
                  top: 810,
                  left: 150,
                  child: Container(
                      child: Text(
                    "Redeem them to get\ninstant discounts",
                    style: TextStyle(color: Color.fromARGB(255, 31, 117, 24), fontSize: 10),
                  ))),
              Positioned(
                  top: 810,
                  left: 250,
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => MenuPage())));
                    },
                    child: Text("Invite"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 31, 117, 24),
                    ),
                  )
                  ),

                Container(
                margin: EdgeInsets.fromLTRB(100, 1120, 0, 0),
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/Rectangle 28.png"),
              ),
              Positioned(
                top: 900,
                left: 100,
                height: 230,
                width: 280,
                child: Container(
                  child: Image.asset("assets/Container4.png"),
                ),
              ),
              Positioned(
                  top: 880,
                  left: 270,
                  height: 180,
                  width: 200,
                  child: Image.asset( "assets/Plant3.png", )),
                  

                Container(
                margin: EdgeInsets.fromLTRB(100, 1290, 0, 0),
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/Rectangle 28.png"),
              ),
              Positioned(
                top: 1110,
                left: 100,
                height: 230,
                width: 280,
                child: Container(
                  child: Image.asset("assets/container5.png"),
                ),
              ),
              Positioned(
                  top: 1115,
                  left: 270,
                  height: 200,
                  width: 200,
                  child: Image.asset(  "assets/Plant4.png",
                  )),
                  
                  Container(
                margin: EdgeInsets.fromLTRB(100, 1490, 0, 0),
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/Rectangle 28.png"),
              ),
              Positioned(
                top: 1320,
                left: 100,
                height: 230,
                width: 280,
                child: Container(
                  child: Image.asset("assets/Container 6.png"),
                ),
              ),
              Positioned(
                  top: 1320,
                  left: 270,
                  height: 200,
                  width: 200,
                  child: Image.asset( "assets/Plant5.png",
                  )),


                  Container(
                margin: EdgeInsets.fromLTRB(100, 1650, 0, 0),
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/Rectangle 28.png"),
              ),
              Positioned(
                top: 1600,
                left: 100,
                height: 240,
                width: 280,
                child: Container(
                 child: Text("Plant a Life", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                
                ),
                
                ),
                Container(
                margin: EdgeInsets.fromLTRB(100, 1670, 0, 0),
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/Rectangle 28.png"),
              ),
              Positioned(
                  top: 1650,
                  left: 100,
                  height: 200,
                  width: 200,
                 child: Container(
                 child: Text(
                    "Life amonghst Living",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                  ),
                  Container(
                margin: EdgeInsets.fromLTRB(100, 1750, 0, 0),
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/Rectangle 28.png"),
              ),

                  Positioned(
                  top: 1670,
                  left: 100,
                  height: 100,
                  width: 200,
                 child: Container(
                 child: Text("Spread the joy",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                ),
                  ),
            ]),
          ),
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Color.fromARGB(255, 31, 117, 24),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OrderScreen()));
                  },
                  child: Icon( Icons.favorite,color: Color.fromARGB(255, 31, 117, 24),
                  ),
                ),
                label: "fav"),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => OrderScreen()));
                  },
                  child: Icon(
                    Icons.shop_2_outlined,
                    color: Color.fromARGB(255, 31, 117, 24),
                  ),
                ),
                label: "Shop"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outlined,
                  color: Color.fromARGB(255, 31, 117, 24),
                ),
                label: "Profile")
          ])
          )
    );
          
    
  }
}
