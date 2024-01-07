// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app/Constants.dart';
import 'package:chat_app/pages/RegisterPage.dart';
import 'package:chat_app/pages/chatPage.dart';
import 'package:chat_app/widgets/Custom_botton.dart';
import 'package:chat_app/widgets/textFieldWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final TextEditingController emailController;
  bool isLoading = false;
  String? email, password;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: Color(0xff2B475E),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 2,
                ),
                Image.asset(kLoge),
                Text(
                  'Scholar chat',
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontFamily: 'Pacifico'),
                ),
                Spacer(
                  flex: 2,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Sign in ',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                TextField(
                    //controller: emailController,
                    onChanged: (data) {
                      email = data;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your Email : ",
                    )),
                SizedBox(
                  height: 7,
                ),
                TextField(
                    //controller: passwordController,
                    onChanged: (data) {
                      password = data;
                    },
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your Password : ",
                    )),
                SizedBox(
                  height: 7,
                ),
                CustomButton(
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      final credential = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: email!, password: password!);
                      // showSnackBar(context, "Success");
                      Navigator.pushNamed(context, ChatPage.id,
                          arguments: email);
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        showSnackBar(context, "User not found..");
                      } else if (e.code == 'wrong-password') {
                        showSnackBar(
                            context, "Wrong password provided for that user.");
                      }
                    }
                    isLoading = false;
                    setState(() {});
                  },
                  buttomName: 'Sign In',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'don\'t have an account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RegisterPage.id);
                        },
                        child: Text(
                          '  Sign Up',
                          style: TextStyle(color: Color(0xffC7EDE6)),
                        )),
                  ],
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
