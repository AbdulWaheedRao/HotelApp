import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotelapp/createLandscape.dart';
import 'package:flutter_hotelapp/createPortrait.dart';
import 'package:flutter_hotelapp/profileScreen.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white38,
      body: OrientationBuilder(
        builder: (context, orientation) => orientation == Orientation.portrait
            ? CreatePortrait()
            : CreateLandscape(),
      ),
    );
  }
}
