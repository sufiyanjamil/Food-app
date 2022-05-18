// ignore_for_file: file_names, unused_element, avoid_print, empty_catches
//import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:foodapp/google_sign_in.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

import 'screens.dart/home.dart';
//import 'package:google_sign_in/google_sign_in.dart';
//import 'package:google_sign_in/google_sign_in.dart';
//import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors, camel_case_types
class signIn extends StatefulWidget {
  @override
  State<signIn> createState() => _SignIn();
}

class _SignIn extends State<signIn> {
  Future _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // ignore: unused_local_variable
      final User? user = (await _auth.signInWithCredential(credential)).user;
      // print("signed in " + user!.displayName);

      return user;
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  'Sign in to continue'.text.gray600.semiBold.xl.make(),
                  const Text(
                    "Vegi",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 60,
                      fontWeight: FontWeight.w700,
                      shadows: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0xff034509),
                          offset: Offset(4, 4),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SignInButton(
                        Buttons.Apple,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      // ignore: avoid_unnecessary_containers
                      SignInButton(
                        Buttons.Google,
                        onPressed: () {
                          // final provider = Provider.of<GoogleSignInProvider>(
                          //     context,
                          //     listen: false);
                          // provider.googleLogin();

                          _googleSignUp().then((value) => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const home_page())));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      'By signing you are agreeing to our '.text.gray500.make(),
                      'Terms and Privacy Policy'.text.gray500.make(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
