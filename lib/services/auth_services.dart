import 'package:google_sign_in/google_sign_in.dart';


class GoogleSignInApi  {
 static final _googleSign = GoogleSignIn();
 static Future login()=> _googleSign.signIn();
}