import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hotelapp/loginscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
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
        child: Column(children: [
          Expanded(
              flex: 5,
              child: Container(
                child: LayoutBuilder(
                  builder: (context, boxConstraint) => Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: boxConstraint.maxHeight * 0.4,
                          width: boxConstraint.maxWidth * 0.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white54),
                          child: Image.asset('assest/images/pix.png'),
                        ),
                        SizedBox(
                          height: boxConstraint.maxHeight * 0.1,
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
          const Spacer(
            flex: 5,
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: LayoutBuilder(
                builder: (context, boxConstraint) => Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    builder: (context) => LoginScreen(),
                                  ));
                            },
                            child: const Text(
                              'Get Started',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(
                        height: boxConstraint.maxHeight * 0.4,
                        child: const Text(
                          'Already have account?Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
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
