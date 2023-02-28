import 'package:flutter/material.dart';
import 'package:flutter_hotelapp/createAccount.dart';
import 'package:flutter_hotelapp/loginscreen.dart';

class ProfileLandscape extends StatefulWidget {
  const ProfileLandscape({super.key});

  @override
  State<ProfileLandscape> createState() => _ProfileLandscapeState();
}

class _ProfileLandscapeState extends State<ProfileLandscape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white38,
      body: Row(children: [
        Expanded(
            flex: 5,
            child: Container(
              child: LayoutBuilder(
                builder: (context, boxConstraint) => Image.asset(
                  'assest/images/luggage.png',
                  height: boxConstraint.maxHeight * 0.9,
                  width: boxConstraint.maxWidth * 0.8,
                ),
              ),
            )),
        Expanded(
            flex: 5,
            child: Container(
              child: LayoutBuilder(
                builder: (context, boxConstraint) => Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: boxConstraint.maxHeight * 0.1,
                        width: boxConstraint.maxWidth * 0.5,
                        child: FittedBox(
                            child: Text(
                          'Find best deals',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                      // SizedBox(
                      //   height: boxConstraint.maxHeight * 0.05,
                      //   width: boxConstraint.maxWidth * 0.3,
                      // ),
                      SizedBox(
                        height: boxConstraint.maxHeight * 0.15,
                        width: boxConstraint.maxWidth * 0.6,
                        child: FittedBox(
                            child: Text(
                          'Find deal for any season from cosy\n country homes to city plan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                      SizedBox(
                        height: boxConstraint.maxHeight * 0.15,
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
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ),
                      // SizedBox(
                      //   height: boxConstraint.maxHeight * 0.1,
                      //   width: boxConstraint.maxWidth * 0.3,
                      // ),
                      SizedBox(
                        height: boxConstraint.maxHeight * 0.15,
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
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ),
                      // SizedBox(
                      //   height: boxConstraint.maxHeight * 0.05,
                      //   width: boxConstraint.maxWidth * 0.1,
                      // )
                    ]),
              ),
            )),
      ]),
    );
  }
}
