import 'package:flutter/material.dart';
import 'package:flutter_hotelapp/profileScreen.dart';

class LandscapeScreen extends StatefulWidget {
  const LandscapeScreen({super.key});

  @override
  State<LandscapeScreen> createState() => _LandscapeScreenState();
}

class _LandscapeScreenState extends State<LandscapeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assest/images/backgr.jpg'),
                fit: BoxFit.fill)),
        child: Row(children: [
          Expanded(
              flex: 5,
              child: Container(
                child: LayoutBuilder(
                  builder: (context, boxConstraint) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: boxConstraint.maxHeight * 0.3,
                          width: boxConstraint.maxWidth * 0.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white54),
                          child: Image.asset('assest/images/pix.png'),
                        ),
                        SizedBox(
                          height: boxConstraint.maxHeight * 0.1,
                          width: boxConstraint.maxWidth * 0.15,
                          child: const FittedBox(
                              child: Text(
                            'Hotel',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                        SizedBox(
                          height: boxConstraint.maxHeight * 0.07,
                          width: boxConstraint.maxWidth * 0.8,
                          child: const FittedBox(
                              child: Text(
                            'Best hotel deals for your holiday',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: boxConstraint.maxHeight * 0.4,
                        width: boxConstraint.maxWidth * 0.1,
                      ),
                      SizedBox(
                        height: boxConstraint.maxHeight * 0.14,
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
                                    builder: (context) => LoginScreen(),
                                  ));
                            },
                            child: const Text(
                              'Get Started',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: boxConstraint.maxHeight * 0.01,
                            width: boxConstraint.maxWidth * 0.3,
                          ),
                          SizedBox(
                            height: boxConstraint.maxHeight * 0.4,
                            width: boxConstraint.maxWidth * 0.51,
                            child: const Text(
                              'Already have account?Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
