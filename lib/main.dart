import 'package:e_comores/mainpage.dart';
import 'package:e_comores/screens/otp.dart';
import 'package:e_comores/screens/phone.dart';
import 'package:e_comores/screens/signin_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Myphone(),
      routes: {'phone':(context) => Myphone(),'otp':(context) => MyOtp()},
    );
  }
}
