// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:icons_plus/src/bootstrap.dart';
import 'package:portfoilo_1/utils/animated_icon_button.dart';

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
          onTap: () {}
        ),
        
        const SizedBox(
          width: 12,
        ),

        AnimatedIconButton(
          iconData: FontAwesomeIcons.xTwitter, 
          onTap: () {}
        ),

        const SizedBox(
          width: 12,
        ),

        AnimatedIconButton(
          iconData: CupertinoIcons.mail, 
          onTap: () {}
        ),
        
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
