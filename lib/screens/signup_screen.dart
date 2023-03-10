import 'package:e_comores/reusable_widget/reusable_widget.dart';
import 'package:e_comores/screens/home_screen.dart';
import 'package:e_comores/screens/otp.dart';
import 'package:e_comores/screens/phone.dart';
import 'package:e_comores/utils/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static String varify = "";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController countrycode = TextEditingController();
  var phone="";
  @override
  void initState() {
    // TODO: implement initState
    countrycode.text = "+91";
    super.initState();
  }
  
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            
            
            child: SingleChildScrollView(
              child: Column(
                
                children: [
                  const SizedBox(
                    
                    height: 100,
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

                  Text("Or"),
                   

SizedBox(height: 20,),







                  Container(
          margin: const EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
              
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 40,
                        child: TextFormField(
                          controller: countrycode,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '|',
                        style: TextStyle(fontSize: 33, color: Colors.black),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          onChanged: (value){
                            phone=value;
                          },
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "Phone"),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                     
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: '${countrycode.text+phone}',
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          Myphone.varify= verificationId;
                           Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyOtp()));
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    },
                    child: const Text("Sent the code"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black26,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
          ),
        ),

                  signInSignupButton(context, false, () {
                    
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            
                            email: _emailTextController.text,
                            password: _passwordTextController.text)
                        .then((value) {
                           style: ElevatedButton.styleFrom(
                        primary: Colors.black26,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)));
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                          
                      print(
                          "hellooooooooooooooooooooooooooooooooooooooooooooooooooooooooo");
                    }).onError((error, stackTrace) {
                      print("printjjjjjjjjjjj${error.toString()}");
                    });
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
