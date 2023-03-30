import 'package:e_comores/mainpage.dart';
import 'package:e_comores/auth/google_signin/google_signin.dart';
import 'package:e_comores/auth/otp.dart';
import 'package:e_comores/auth/phone.dart';
import 'package:e_comores/auth/signin_screen.dart';
import 'package:e_comores/auth/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:const Mainpage(),
        routes: {'phone':(context) => Myphone(),'otp':(context) => MyOtp()},
      ),
    );
  }
}
