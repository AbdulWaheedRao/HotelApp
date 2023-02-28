import 'package:flutter/material.dart';
import 'package:flutter_hotelapp/LoginLandscape.dart';
import 'package:flutter_hotelapp/LoginPortrait.dart';
import 'package:flutter_hotelapp/dashboard.dart';
import 'package:flutter_hotelapp/profileScreen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white38,
      body: OrientationBuilder(
        builder: (context, orientation) => orientation == Orientation.portrait
            ? LoginPortrait()
            : LoginLandscape(),
      ),
    );
  }
}
