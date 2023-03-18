import 'package:e_comores/reusable_widget/reusable_widget.dart';
import 'package:e_comores/screens/google_signin/google_signin.dart';
import 'package:e_comores/screens/home_screen.dart';
import 'package:e_comores/screens/signup_screen.dart';
import 'package:e_comores/services/auth_services.dart';
import 'package:e_comores/utils/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';


class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  final GoogleSignIn _googleSignin = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.black38,
        elevation: 0,
        title: const Text(
          "Logon",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
             
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
               const SizedBox(
                  height: 20,
                ),
                signInSignupButton(context, true, () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>const HomeScreen()));
                  }).onError((error, stackTrace) {
                    print("errorrrrrrrrrrrrrrrrrrrrrrr${error.toString()}");
                  });
                }),
                signUpOption(),
                ElevatedButton(onPressed: ()async{
                  
                 final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
                 provider.googleLogin();
                },
                 child:const Text("Google"))
              ],
            ),
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
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>const SignUpScreen()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
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
