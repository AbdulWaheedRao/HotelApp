import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotelapp/profileScreen.dart';

class DashboardPortrait extends StatefulWidget {
  const DashboardPortrait({super.key});

  @override
  State<DashboardPortrait> createState() => _DashboardPortraitState();
}

class _DashboardPortraitState extends State<DashboardPortrait> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Expanded(
            flex: 3,
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Search',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.06,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Where are you gooing?',
                              prefixIcon: Icon(Icons.search),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40))),
                        ))
                  ]),
            )),
        Expanded(
            flex: 3,
            child: Container(
              height: screenHeight * 0.1,
              width: screenWidth * 0.95,
              decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assest/images/hotel.jpeg'),
                      ),
                      AutoSizeText(
                        'Hotels',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: screenWidth * 0.03,
                    height: screenHeight * 0.1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assest/images/backpacker.jpeg'),
                      ),
                      AutoSizeText(
                        'Backpacker',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: screenWidth * 0.03,
                    height: screenHeight * 0.1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assest/images/resort.jpeg'),
                      ),
                      AutoSizeText(
                        'Resort',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: screenWidth * 0.03,
                    height: screenHeight * 0.1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assest/images/villa.jpeg'),
                      ),
                      AutoSizeText(
                        'Villas',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: screenWidth * 0.03,
                    height: screenHeight * 0.1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assest/images/backpacker.jpeg'),
                      ),
                      AutoSizeText(
                        'Backpacker',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ]),
              ),
            )),
        Expanded(
            flex: 9,
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AutoSizeText(
                          'Last searches',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        AutoSizeText(
                          'Clear All',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                        color: Colors.lightBlue.withOpacity(0.2),
                        height: screenHeight * 0.5,
                        width: screenWidth * 0.9,
                        child: GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          childAspectRatio: 0.9,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white30,
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25)),
                                      child: Image.asset(
                                        'assest/images/london.jpeg',
                                        height: screenHeight * 0.14,
                                        width: screenWidth * 0.5,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    AutoSizeText(
                                      'London',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    AutoSizeText(
                                      '1 Room-2 Adult',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    AutoSizeText(
                                      '12 - 23 Dec',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white30,
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25)),
                                      child: Image.asset(
                                        'assest/images/paris.jpeg',
                                        height: screenHeight * 0.14,
                                        width: screenWidth * 0.5,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    AutoSizeText(
                                      'Paris',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    AutoSizeText(
                                      '2 Room-4 Adult',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    AutoSizeText(
                                      '12 - 23 Sep',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white30,
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25)),
                                      child: Image.asset(
                                        'assest/images/newyork.jpeg',
                                        height: screenHeight * 0.14,
                                        width: screenWidth * 0.5,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    AutoSizeText(
                                      'New York',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    AutoSizeText(
                                      '1 Room-3 Adult',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    AutoSizeText(
                                      '12 - 23 Aug',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white30,
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25)),
                                      child: Image.asset(
                                        'assest/images/tokyo.jpeg',
                                        height: screenHeight * 0.14,
                                        width: screenWidth * 0.5,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    AutoSizeText(
                                      'Tokyo',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    AutoSizeText(
                                      '1 Room-2 Adult',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    AutoSizeText(
                                      '12 - 23 Dec',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white30,
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25)),
                                      child: Image.asset(
                                        'assest/images/shanghai.jpg',
                                        height: screenHeight * 0.14,
                                        width: screenWidth * 0.5,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    AutoSizeText(
                                      'Shanghai',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    AutoSizeText(
                                      '2 Room-6 Adult',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    AutoSizeText(
                                      '12 - 23 Dec',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white30,
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25)),
                                      child: Image.asset(
                                        'assest/images/mosco.jpeg',
                                        height: screenHeight * 0.14,
                                        width: screenWidth * 0.5,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    AutoSizeText(
                                      'Mosco',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    AutoSizeText(
                                      '5 Room-10 Adult',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    AutoSizeText(
                                      '12 - 23 Dec',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                          ],
                        ))
                  ]),
            ))
      ]),
    );
  }
}
