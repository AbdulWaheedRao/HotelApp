import 'package:flutter/material.dart';
import 'package:flutter_hotelapp/createAccount.dart';
import 'package:flutter_hotelapp/loginscreen.dart';

class ProfilePortrait extends StatefulWidget {
  const ProfilePortrait({super.key});

  @override
  State<ProfilePortrait> createState() => _ProfilePortraitState();
}

class _ProfilePortraitState extends State<ProfilePortrait> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white38,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
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
                                width: boxConstraint.maxWidth * 0.5,
                                child: FittedBox(
                                    child: Text(
                                  'Find best deals',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                              ),
                              SizedBox(
                                height: boxConstraint.maxHeight * 0.05,
                                width: boxConstraint.maxWidth * 0.3,
                              ),
                              SizedBox(
                                height: boxConstraint.maxHeight * 0.15,
                                width: boxConstraint.maxWidth * 0.6,
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
                                                    BorderRadius.circular(
                                                        25)))),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SignUp(),
                                          ));
                                    },
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              SizedBox(
                                height: boxConstraint.maxHeight * 0.1,
                                width: boxConstraint.maxWidth * 0.3,
                              ),
                              SizedBox(
                                height: boxConstraint.maxHeight * 0.2,
                                width: boxConstraint.maxWidth * 0.7,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        25)))),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                CreateAccount(),
                                          ));
                                    },
                                    child: Text(
                                      'Create account',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              SizedBox(
                                height: boxConstraint.maxHeight * 0.05,
                                width: boxConstraint.maxWidth * 0.1,
                              )
                            ]),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
