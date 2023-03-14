import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/View/Registeration.dart';
import 'package:myapp/View/Signup.dart';
import 'package:myapp/View/home_Screen.dart';
import 'package:myapp/View/Signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    register() async {
      FirebaseAuth auth = FirebaseAuth.instance;
     // final String username = usernameController.text;
      final String email = emailController.text;
      final String password = passwordController.text;

      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      print('you have successfully registered');
      try {
        final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }

    return Scaffold(
    appBar: AppBar ( 
       actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notification_add,
                  color: Colors.orangeAccent,
                ),
                onPressed: () {
                },
              ),      
     
          Padding(
              padding: const EdgeInsets.all(4.0),),
              IconButton(
                icon: Icon(Icons.draw_sharp,color: Colors.orangeAccent,
                ),
                onPressed: () {
                },
              ),
          Padding(
              padding: const EdgeInsets.all(8.0),)
        ],
        leading: Image(image: AssetImage('assets/HeartLogo.PNG'),height: 110.0, width: 50.0
        ),
        backgroundColor: const Color.fromARGB(149, 208, 211, 181),
        title: Text("SQuiP",style: TextStyle(color: Colors.orangeAccent, fontSize: 20, fontWeight: FontWeight.bold)),),
      
  body: Container(
        padding: EdgeInsets.all(17),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Text(" Login ",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Text(
                    "Pakistan not only means freedom and independence but the Muslim Ideology \n which has to be preserved, which has come to us as a precious gift and treasure \n and which, we hope other will share with us.",
                    style: TextStyle(color: Colors.black, fontSize: 16,
                    //fontWeight: FontWeight.bold
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerLeft, child: Text(" Enter Your Email",
                style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold) )),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: 'Enter YR Email',
                  hintText: 'Enter Your Name',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(alignment: Alignment.centerLeft, 
            child: Text("Enter Password",style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold) )),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  
                  hintText: 'Enter Your Password',
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: ((context) => HomePage())));
                },
                child: Text("Forgot Password?"),
              ),
            ),
            Container(
              // height: 50,
              // width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
                onPressed: () {
                 Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => HomePage())));
                },
                child: Text("  Login "),
              ),
            ),
            Padding(padding:EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => SignupPage())));
                  },
                  child: const Text('  SignUp now  ',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
