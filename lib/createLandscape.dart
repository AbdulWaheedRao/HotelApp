import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotelapp/profileScreen.dart';

class CreateLandscape extends StatefulWidget {
  const CreateLandscape({super.key});

  @override
  State<CreateLandscape> createState() => _CreateLandscapeState();
}

class _CreateLandscapeState extends State<CreateLandscape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white38,
      appBar: AppBar(
        title: Text('CreateAccount'),
      ),
      body: Row(children: [
        Expanded(
            flex: 4,
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AutoSizeText(
                      'Create Account',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    AutoSizeText(
                        'Enter your Name,Email and Password\n for sign up.Already have account?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13)),
                    AutoSizeText(
                      'By Signing up you agree to our Terms\n Condition and privacy policy',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    )
                  ]),
            )),
        Expanded(
            flex: 6,
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: screenWidth * 0.5,
                        height: clientHeight * 0.13,
                        child: TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              hintText: 'Full Name',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )),
                    SizedBox(
                        width: screenWidth * 0.5,
                        height: clientHeight * 0.13,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: 'Email Adress',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )),
                    SizedBox(
                        width: screenWidth * 0.5,
                        height: clientHeight * 0.13,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )),
                    SizedBox(
                        width: screenWidth * 0.2,
                        height: clientHeight * 0.1,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Center(child: Text('SIGN UP')))),
                  ]),
            ))
      ]),
    );
  }
}
