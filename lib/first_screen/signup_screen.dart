import 'package:flutter/material.dart';
import 'package:mixify/home.dart';

import '../reusable_widgets/reusable_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _passwordTextController = TextEditingController();
    TextEditingController _emailTextController = TextEditingController();
    TextEditingController _userNameTextController = TextEditingController();
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
    body: Container(
    width:  MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Colors.black, Colors.deepPurple],
    ),
    ),
        child: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.fromLTRB(20,120,20,0),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          reusableTextField("Enter UserName", Icons.person_outline, true,
              _userNameTextController),
          const SizedBox(
            height: 20,
          ),
          reusableTextField("Enter Email id", Icons.person_outline, true,
              _emailTextController),
          const SizedBox(
            height: 20,
          ),
          reusableTextField("Enter Password", Icons.person_outline, true,
              _passwordTextController),
          const SizedBox(
            height: 20,
          ),
          signInSignUpButton(context, false, (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=>Home()));
          })
        ],
    ),
    ),
    ),
    ),
    );
  }
}
