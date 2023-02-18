import 'package:flutter/material.dart';
import 'package:flutter_hotelapp/createAccount.dart';
import 'package:flutter_hotelapp/singup.dart';

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
        backgroundColor: Colors.white60,
        body: Center(
          child: Column(
            children: [
              Spacer(
                flex: 1,
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    child: LayoutBuilder(
                      builder: (context, boxConstraint) => Image.asset(
                        'assest/images/luggage.png',
                        height: boxConstraint.maxHeight * 0.5,
                        width: boxConstraint.maxWidth * 0.7,
                      ),
                    ),
                  )),
              Expanded(
                  flex: 5,
                  child: Container(
                    child: LayoutBuilder(
                      builder: (context, boxConstraint) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: boxConstraint.maxHeight * 0.1,
                              child: FittedBox(
                                  child: Text(
                                'Find best deals',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                            ),
                            SizedBox(
                              height: boxConstraint.maxHeight * 0.05,
                            ),
                            SizedBox(
                              height: boxConstraint.maxHeight * 0.15,
                              child: FittedBox(
                                  child: Text(
                                'Find deal for any season from cosy\n country homes to city plan',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                            )
                          ]),
                    ),
                  )),
              Expanded(
                  flex: 5,
                  child: Container(
                    child: LayoutBuilder(
                      builder: (context, boxConstraint) => Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: boxConstraint.maxHeight * 0.2,
                              width: boxConstraint.maxWidth * 0.7,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25)))),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignUp(),
                                        ));
                                  },
                                  child: Text(
                                    'Login',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                            ),
                            SizedBox(
                              height: boxConstraint.maxHeight * 0.1,
                            ),
                            SizedBox(
                              height: boxConstraint.maxHeight * 0.2,
                              width: boxConstraint.maxWidth * 0.7,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25)))),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => CreateAccount(),
                                        ));
                                  },
                                  child: Text(
                                    'Create account',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                            ),
                            SizedBox(
                              height: boxConstraint.maxHeight * 0.05,
                            )
                          ]),
                    ),
                  )),
            ],
          ),
        ));
  }
}