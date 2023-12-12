// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfoilo_1/utils/animate_contact.dart';
import 'package:portfoilo_1/utils/socialrow.dart';
import 'package:url_launcher/url_launcher.dart';
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
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey.shade700),
              ),

              // https://docs.flutter.dev/cookbook/effects/download-button
              // the above implementation can be done to make a custom download button
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(width: 1,color: Colors.black54)
                ),
                // color: Colors.white54,
                alignment: Alignment.center,
                // constraints: BoxConstraints(maxHeight: 100),
                width: 100,
                child: Container(
                  // width: 100,
                  child: Tooltip(
                    message: "Download Resume",
                    child: TextButton(
                      onPressed: _openResume,
                      child: Row(
                        children: [
                          Text(
                            "Resume",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                          Icon(
                            CupertinoIcons.doc_fill,
                            color: Colors.black87,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
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
                onTap: _openLinkedInProfile,
              ),
              AnimatedContact(
                iconData: FontAwesomeIcons.github,
                title: "Github",
                subtitle: "ankurt02",
                onTap: _openGithubProfile,
              ),
              AnimatedContact(
                iconData: CupertinoIcons.mail_solid,
                title: "Gmail",
                subtitle: "ankurt5202@gmail.com",
                onTap: _openGmail,
              ),
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
      ),
    );
  }
}

void _openLinkedInProfile() async {
  const String url = 'https://www.linkedin.com/in/ankur-tiwary-393479230/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _openGithubProfile() async {
  const String url = 'https://github.com/ankurt02';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
void _openResume() async {
  const String url = 'https://drive.google.com/file/d/1TXAgi25QNvYbGx1JpP51CsbBdejcfE1-/view?usp=drive_link';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _openGmail() async {
  String email = Uri.encodeComponent("ankurt5202@gmail.com");
  // String subject = Uri.encodeComponent("Hello Flutter");
  // String body = Uri.encodeComponent("Hi! I'm Flutter Developer");
  // print(subject); //output: Hello%20Flutter
  Uri mail = Uri.parse("mailto:$email");
  if (await launchUrl(mail)) {
    //email app opened
  } else {
    //email app is not opened
  }
}
