import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/Screen/Signup.dart';
import 'package:myapp/Screen/home_Screen.dart';
import 'package:myapp/Screen/Signup.dart';

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
        leading: Image(image: AssetImage('assets/Logo.png'),color: Colors.green, height: 110.0, width: 50.0),
        backgroundColor: const Color.fromARGB(149, 208, 211, 181),
        title: Text("PLANTIFY",style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),),
      
      body:  Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text("Login",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 26,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(
                    "Masukan NISN dan password untuk \nmemulai belajar sekarang",
                    style: TextStyle(color: Colors.green, fontSize: 14)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
                alignment: Alignment.centerLeft, child: Text("UserName/Email",
                style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold) )),
            SizedBox(
              height: 10,
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
            Align(alignment: Alignment.centerLeft, child: Text("Password",
            style: TextStyle(
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
                 Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupPage()));
                     
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
                 //Login();
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => HomePage())));
                },
                child: Text(" MULAIBELAJAR "),
              ),
            ),
             Padding(padding: const EdgeInsets.all(5.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SignupPage())));
                  },
                  
                  child: const Text('SIGNUP',
                      style: TextStyle(color: Colors.green,fontFamily: 'Montserrat', fontWeight: FontWeight.bold,decoration: TextDecoration.underline)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
