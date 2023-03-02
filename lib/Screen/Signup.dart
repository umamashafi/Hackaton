import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Registration.dart';


class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
        actions: [
          IconButton(onPressed: () {         
            // Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => (app())));
          }, icon: Icon(Icons.notification_add)),
          Padding(
              padding: const EdgeInsets.all(4.0),),
          IconButton(onPressed: () {}, icon: Icon(Icons.draw_rounded),),
          Padding(
              padding: const EdgeInsets.all(8.0),)
        ],
        leading: Image(image: AssetImage('assets/Logo.png'),color: Colors.green, height: 100.0, width: 20.0),
        backgroundColor: const Color.fromARGB(149, 208, 211, 181),
        title: Text("PLANTIFY"),
      ),
      body:  Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(" Signup ",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 28,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(
                    "Masukan NISN dan password untuk \nmemulai belajar sekarang",
                    style: TextStyle(color: Colors.green, fontSize: 16)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft, child: Text(" NISN",
                style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold) )),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter Your Name',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(alignment: Alignment.centerLeft, child: Text("NISN",style: TextStyle(
                        color: Colors.green,
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
                  //Navigator.push(context,
                  //     MaterialPageRoute(builder: ((context) => HomePage())));
                },
                child: Text("Forgot Password?"),
              ),
            ),
            Container(
              // height: 50,
              // width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 20, 100, 23),
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
                onPressed: () {
                 // Login();
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: ((context) => Home_Screen())));
                },
                child: Text(" KARIM "),
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
                            builder: ((context) => const Register())));
                  },
                  child: const Text('Registeration now',
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
