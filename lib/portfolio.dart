// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfoilo_1/components/about.dart';
import 'package:portfoilo_1/components/education.dart';
import 'package:portfoilo_1/components/footer.dart';
import 'package:portfoilo_1/components/skills.dart';
import 'package:particles_fly/particles_fly.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  bool _isRunning = true;
  double screenWidth = 0.0;
  double screenHeight = 0.0;
  List<Widget> navItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Education"),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)))),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Skills"),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)))),
      ),
    ),
  ];
  bool isMobile = false;
  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        // add a circular avatar here
        // leading: Icon(
        //   CupertinoIcons.circle,
        // ),
        title: Text(
          "Ankur Tiwary",
        ),
        elevation: 5.0,
        shadowColor: Colors.grey[350],
        actions: isMobile ? null : navItems,
      ),

      // the drawer needs to be changed and a seperate widgert/file needs to me made for that and then called as a function, as did in the codepur project
      drawer: isMobile
          ? Drawer(
              // code the custom widgets here, changing the elevated button to normal
              child: ListView(
                children: navItems,
              ),
            )
          : null,
      body: Stack(
        children: [
          ParticlesFly(
                  height: screenHeight, 
                  width: screenWidth,
                  // onTapAnimation: true,
                  connectDots: true,
                  numberOfParticles: screenWidth < 500
                                      ? 20
                                      : screenWidth < 1600
                                          ? 100
                                          : 100,
                  // awayAnimationCurve: Curves.bounceIn,
                  // awayRadius: 6,
                  // enableHover: false,
                  // awayAnimationCurve: Curves.bounceOut,
                  // awayAnimationDuration: Duration(seconds: 2),
                  // hoverRadius: 100,
                  speedOfParticles: 0.8,
                  randColorList: [
                    Colors.amber.shade300,
                    Colors.amber.shade700,
                    Colors.white38
                  ],
                  lineColor: Colors.amber.shade300,
                ), 
          SingleChildScrollView(

            child: Center(
              child: Column(
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      About(), 
                      Education()
                    ],
                  ),
      
                // skills
                  Skills(),
      
                // footer
                  Footer(),
                ],
            ),
          ),
          ), 
          
        ]
      ),
    );
  }
}
