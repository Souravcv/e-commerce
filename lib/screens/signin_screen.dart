import 'package:e_comores/reusable_widget/reusable_widget.dart';
import 'package:e_comores/screens/home_screen.dart';
import 'package:e_comores/screens/signup_screen.dart';
import 'package:e_comores/services/auth_services.dart';
import 'package:e_comores/utils/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const SizedBox(
                height: 30,
              ),
              reusableTextField(
                  "Email Id", Icons.person, false, _emailTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter password", Icons.lock_open_outlined,
                  false, _passwordTextController),
              SizedBox(
                height: 20,
              ),
              signInSignupButton(context, true, () {
                FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _passwordTextController.text)
                    .then((value) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }).onError((error, stackTrace) {
                  print("errorrrrrrrrrrrrrrrrrrrrrrr${error.toString()}");
                });
              }),
              signUpOption()
            ],
          ),
        ),
      ),
    );
  }
//   Image logoWidget(String imageName){
// return Image.asset(
//   imageName,
//   fit: BoxFit.fitWidth,
//   height: 240,
//   width: 240,
//   color: Colors.white,
// );
//   }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have account?",
          style: TextStyle(color: Colors.white),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
       const SizedBox(height: 30,),
      //  Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     TextButton(onPressed: (){
      //       AuthService().signInWithGoogle();
      //     },
          
      //      child: const Text("Login With google"))
      //   ],
      //  )
      ],
    );
  }
}
