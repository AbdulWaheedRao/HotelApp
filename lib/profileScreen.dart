import 'package:flutter/material.dart';
import 'package:flutter_hotelapp/createAccount.dart';
import 'package:flutter_hotelapp/profilelandscape.dart';
import 'package:flutter_hotelapp/profileportrait.dart';
import 'package:flutter_hotelapp/loginscreen.dart';

late Size screenSize;
late double screenWidth, screenHeight, clientHeight;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    clientHeight =
        screenHeight - kToolbarHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white38,
        body: OrientationBuilder(
          builder: (context, orientation) => orientation == Orientation.portrait
              ? ProfilePortrait()
              : ProfileLandscape(),
        ));
  }
}
