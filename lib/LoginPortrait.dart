import 'package:flutter/material.dart';
import 'package:flutter_hotelapp/dashboard.dart';
import 'package:flutter_hotelapp/profileScreen.dart';

class LoginPortrait extends StatefulWidget {
  const LoginPortrait({super.key});

  @override
  State<LoginPortrait> createState() => _LoginPortraitState();
}

class _LoginPortraitState extends State<LoginPortrait> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white38,
      body: Center(
        child: Column(children: [
          Expanded(flex: 1, child: SizedBox()),
          Expanded(
              flex: 6,
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assest/images/flutter.png',
                            width: screenWidth * 0.1,
                            height: screenHeight * 0.1,
                          ),
                          SizedBox(
                            width: screenWidth * 0.15,
                            height: screenHeight * 0.1,
                            child: FittedBox(
                                child: Text(
                              'Hotel',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          )
                        ],
                      ),
                      SizedBox(
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.1,
                        child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                hintText: 'Email',
                                prefixIcon: Icon(Icons.email))),
                      ),
                      SizedBox(
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.1,
                        child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                hintText: 'Password',
                                prefixIcon: Icon(Icons.password))),
                      ),
                      SizedBox(
                        width: screenWidth * 0.3,
                        height: screenHeight * 0.07,
                        child: FittedBox(
                            child: Text(
                          'forgot password',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                      SizedBox(
                        width: screenWidth * 0.5,
                        height: screenHeight * 0.07,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Dashboard(),
                                  ));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      )
                    ]),
              )),
          Expanded(
              flex: 2,
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: screenWidth * 0.6,
                          height: screenHeight * 0.07,
                          child: FittedBox(
                              child: Text('New user?Create Account'))),
                    ]),
              ))
        ]),
      ),
    );
  }
}
