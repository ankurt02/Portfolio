// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:icons_plus/src/bootstrap.dart';
import 'package:portfoilo_1/utils/animated_icon_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        Text(
            "Connect with me on",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedIconButton(
          iconData: FontAwesomeIcons.instagram,
          title: "Instagram", 
          onTap: _openInstagram,
        ),
        
        const SizedBox(
          width: 12,
        ),

        AnimatedIconButton(
          iconData: FontAwesomeIcons.xTwitter, 
          title: "Twitter",
          onTap: _openTwitter,
          
        ),

        const SizedBox(
          width: 12,
        ),

        // AnimatedIconButton(
        //   iconData: CupertinoIcons.mail, 
        //   onTap: () {}
        // ),
        
          ],
        ),
        
        



        // https://pub.dev/packages/icons_plus#bootstrap
        // Logo(
        //   Logos.instagram
        // ),
        // Logo(
        //   Logos.twitter
        // ),
        // Logo(
        //   Logos.linkedin
        // )


      ],
    );
  }
}


void _openInstagram() async {
  const String url = 'https://instagram.com/__ankurtiwary05__?igshid=OGQ5ZDc2ODk2ZA==';
  if (await canLaunchUrl(url as Uri)) {
    await launchUrl(url as Uri);
  } else {
    throw 'Could not launch $url';
  }
}

void _openTwitter() async {
  const String url = 'https://x.com/_ankur2_?t=4se6qBukpAoopLk4VtRblg&s=09';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}