import 'package:e_comores/reusable_widget/reusable_widget.dart';
import 'package:e_comores/screens/home_screen.dart';
import 'package:e_comores/utils/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              hexStringToColors("CB2B93"),
              hexStringToColors("9546C4"),
              hexStringToColors("5E6174"),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "UserName", Icons.person, false, _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "Email Id", Icons.person, false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(" password", Icons.lock_open_outlined, false,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                signInSignupButton(context, false, () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                    print(
                        "hellooooooooooooooooooooooooooooooooooooooooooooooooooooooooo");
                  }).onError((error, stackTrace) {
                    print("printjjjjjjjjjjj${error.toString()}");
                  });
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
