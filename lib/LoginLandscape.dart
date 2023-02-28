import 'package:flutter/material.dart';
import 'package:flutter_hotelapp/dashboard.dart';
import 'package:flutter_hotelapp/profileScreen.dart';

class LoginLandscape extends StatefulWidget {
  const LoginLandscape({super.key});

  @override
  State<LoginLandscape> createState() => _LoginLandscapeState();
}

class _LoginLandscapeState extends State<LoginLandscape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white38,
      body: Center(
        child: Row(
          children: [
            Expanded(
                flex: 4,
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
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   width: screenWidth * 0.1,
                        //   height: screenWidth * 0.07,
                        // ),
                        SizedBox(
                            width: screenWidth * 0.6,
                            height: screenHeight * 0.07,
                            child: FittedBox(
                                child: Text('New user?Create Account'))),
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
                          height: screenHeight * 0.13,
                          child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  hintText: 'Email',
                                  prefixIcon: Icon(Icons.email))),
                        ),
                        SizedBox(
                          width: screenWidth * 0.5,
                          height: screenHeight * 0.13,
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
                          height: screenHeight * 0.06,
                          child: FittedBox(
                              child: Text(
                            'forgot password',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        SizedBox(
                          width: screenWidth * 0.3,
                          height: screenHeight * 0.13,
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
                ))
          ],
        ),
      ),
    );
  }
}
