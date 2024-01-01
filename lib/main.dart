import 'package:flutter/material.dart';
import 'package:mixify/first_screen/signin_screen.dart';
import 'home.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Mixify: Music, Movies & Magic",
    home: SignInScreen(),
  ));
}

