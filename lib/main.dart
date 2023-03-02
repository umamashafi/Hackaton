import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Screen/Registration.dart';
import 'package:myapp/Screen/Splash.dart';
import 'package:myapp/Screen/home_Screen.dart';
import 'package:myapp/Screen/menu.dart';
import 'package:myapp/Screen/order_Screen.dart';
import 'package:myapp/firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hackaton Project',
      home: SplashScreenPage(),
       debugShowCheckedModeBanner: false,
    );
  }
}