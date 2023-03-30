


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIna = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;
Future googleLogin()async {
 final googleuser = await googleSignIna.signIn();
 if (googleuser == null) return;
 _user = googleuser;
 final googleAuth = await googleuser.authentication;
 final credaential = GoogleAuthProvider.credential(
  accessToken: googleAuth.accessToken,
  idToken: googleAuth.idToken,
 );
 await FirebaseAuth.instance.signInWithCredential(credaential);
 notifyListeners();
   
 
}

}   