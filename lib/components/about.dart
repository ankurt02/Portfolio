// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfoilo_1/utils/animate_contact.dart';
import 'package:portfoilo_1/utils/socialrow.dart';
import 'package:velocity_x/velocity_x.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(20),
      width: screenWidth < 900 
        ? screenWidth * 0.9 
        : screenWidth < 1600
          ? screenWidth * 0.3
          : screenWidth * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(24.0),
      height: 800.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: [
              Image.asset(
            "assets/filecoinPhoto.png",
            height: 156.0,
          ),
          Text(
            "Ankur Tiwary",
            style: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "I am a developer!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              Chip(
            backgroundColor: Colors.grey.shade200,
            label: const Text(
                "Flutter Developer"
              ),
            padding: EdgeInsets.all(8.0),
            labelStyle: TextStyle(
              color: Colors.black87,
              fontSize: 14.0,
            ),
            elevation: 0.0,
          ),
          Chip(
            backgroundColor: Colors.grey.shade200,
            label: Text(
              "Python Developer"
              ),
              padding: EdgeInsets.all(8.0),
              labelStyle: TextStyle(
                color: Colors.black87,
                fontSize: 14.0,
              ),
            )
            ],
          ),

          Divider(
            thickness: 2,
                indent: 8,
                endIndent: 8,
          ),
          
          AnimatedContact(
            iconData: FontAwesomeIcons.linkedinIn,
            title: "LinkedIn",
            subtitle: "ankur-tiwary-393479230",
            onTap: () {
              
            },
          ),
          AnimatedContact(
            iconData: FontAwesomeIcons.github,
            title: "Github",
            subtitle: "ankurt02",
            onTap: () {
              
            },
          ),
          // AnimatedContact(
          //   iconData: FontAwesomeIcons.twitter,
          //   title: "Twitter",
          //   subtitle: "_ankur2_",
          //   onTap: () {
              
          //   },
          // ),
          // AnimatedContact(
          //   iconData: FontAwesomeIcons.instagram,
          //   title: "Instagram",
          //   subtitle: "__ankurtiwary02__",
          //   onTap: () {
              
          //   },
          // ),
            ],
          ),
          
          
          // social Row
          
          Column(
            children: [
              // // Divider(
              //   thickness: 2,
              //   indent: 8,
              //   endIndent: 8,

              // ),
              SocialRow(),
            ],
          )
        ],
      ) ,
    );
  }
}
