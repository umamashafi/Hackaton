import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/Screen/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    register() async {
      FirebaseAuth auth = FirebaseAuth.instance;
      final String username = usernameController.text;
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
      body:
      Padding(
        padding: const EdgeInsets.all(18.0),
        
                  
          child: Column(
          children: [
            SizedBox(
              height: 14,
            ),
            Padding(
        padding: const EdgeInsets.all(18.0),
            child: Text("Registerd now",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 26,
                        fontWeight: FontWeight.bold)),),
             TextFormField(
              //controller: emailController,
              controller: usernameController,
              decoration: InputDecoration(prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    labelText: 'Enter Your Name', hintText: 'Enter Your Name'),
                     ),
                     Padding(padding: const EdgeInsets.all(5.0)),
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  labelText: 'Enter Father Name', hintText: 'Enter Father Name'),
            ),
            Padding(padding: const EdgeInsets.all(5.0)),
             TextFormField(
              decoration: InputDecoration(prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    labelText: 'Enter Nick Name', hintText: 'Enter Nick Namel'),
                     ),
            Padding(padding: const EdgeInsets.all(5.0),),
             TextFormField(
              controller: emailController,
              decoration: InputDecoration(prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    labelText: 'Enter Email', hintText: 'Enter Email'),
                     ),
             Padding(padding: const EdgeInsets.all(5.0),),
             TextFormField(
              //controller: emailController,
              controller: passwordController,
              decoration: InputDecoration(prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    labelText: 'Enter Password', hintText: 'Enter Pasword'),
                     ),
            
             Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 31, 117, 24), //<-- SEE HERE
                ),
                onPressed: () {
                 
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => (Submit())));
                },
                
                child: Text("  Submit  ",style:TextStyle(color:Colors.white,fontSize: 15),
              ),
            // Padding(
            //   padding: const EdgeInsets.all(18.0),
            //   child:
            //       ElevatedButton(onPressed: register, child: Text("Register")),
            // )
        ),
      ),
          ]
      )
    )
 
    );
  }
}