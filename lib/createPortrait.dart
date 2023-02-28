import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotelapp/profileScreen.dart';

class CreatePortrait extends StatefulWidget {
  const CreatePortrait({super.key});

  @override
  State<CreatePortrait> createState() => _CreatePortraitState();
}

class _CreatePortraitState extends State<CreatePortrait> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white38,
      appBar: AppBar(
        title: Text('CreateAccount'),
      ),
      body: Column(children: [
        Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AutoSizeText(
                        'Create Account',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      AutoSizeText(
                          'Enter your Name,Email and Password\n for sign up.Already have account?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13)),
                      SizedBox(
                          width: screenWidth * 0.7,
                          height: clientHeight * 0.1,
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                hintText: 'Full Name',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          )),
                      SizedBox(
                          width: screenWidth * 0.7,
                          height: clientHeight * 0.1,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: 'Email Adress',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          )),
                      SizedBox(
                          width: screenWidth * 0.7,
                          height: clientHeight * 0.1,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: 'Password',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          )),
                      SizedBox(
                          width: screenWidth * 0.5,
                          height: clientHeight * 0.07,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Center(child: Text('SIGN UP')))),
                      AutoSizeText(
                        'By Signing up you agree to our Terms\n Condition and privacy policy',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      )
                    ]),
              ),
            )),
      ]),
    );
  }
}
